import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/encryption/encryption_bloc.dart';
import 'package:fyeo/presentation/widget/button.dart';
import 'package:fyeo/presentation/widget/custom_text_form_field.dart';
import 'package:fyeo/presentation/widget/encryption/error_state.dart';
import 'package:fyeo/presentation/widget/encryption/intensity_slider.dart';
import 'package:fyeo/presentation/widget/encryption/on_progress_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/router/app_routes.dart';

class EncryptionScreen extends StatelessWidget {
  const EncryptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EncryptionBloc, EncryptionState>(
      // Only fires when pendingRoute becomes a SuccessRoute
      listenWhen: (prev, curr) =>
          curr.pendingRoute is SuccessRoute &&
          prev.pendingRoute is! SuccessRoute,
      listener: (context, state) {
        final route = state.pendingRoute as SuccessRoute;
        context.read<EncryptionBloc>().add(
          const EncryptionEvent.routeConsumed(),
        );
        context.push('/success', extra: route.result);
      },
      child: Scaffold(
        backgroundColor: AppColors.darkBg,
        appBar: AppBar(
          backgroundColor: AppColors.darkBg,
          elevation: 0,
          title: const Text('Encryption Settings'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.read<EncryptionBloc>().add(
                const EncryptionEvent.encryptionCancelled(),
              );
              context.pop();
            },
          ),
        ),
        body: BlocBuilder<EncryptionBloc, EncryptionState>(
          builder: (context, state) {
            if (state.errorMessage != null) {
              return EncryptionErrorStateWidget(
                errorMessage: state.errorMessage ?? 'Unknown error',
              );
            }

            return Stack(
              children: [
                _EncryptionContent(state: state),
                if (state.isEncrypting)
                  EncryptionProgressDialog(progress: state.encryptionProgress),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _EncryptionContent extends StatelessWidget {
  final EncryptionState state;
  const _EncryptionContent({required this.state});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EncryptionBloc>();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── File info card ──────────────────────────
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.darkSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBlue.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.image,
                      color: AppColors.primaryBlue,
                      size: 32,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bloc.fileToEncrypt.path.split('/').last,
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Ready to encrypt',
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: AppColors.mutedText),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // ── Intensity slider ────────────────────────
            IntensitySlider(intensity: state.intensity),
            const SizedBox(height: 32),

            // ── Password field ──────────────────────────
            CustomTextFormField(
              title: 'Encryption Passphrase',
              hintText: 'Enter a strong passphrase',
              keyboardType: TextInputType.text,
              obscureText: !state.isPasswordVisible,
              isPassword: true,
              errorText: !state.password.isPure && state.password.isNotValid
                  ? "Password must be at least 6 characters."
                  : null,
              onChanged: (value) {
                context.read<EncryptionBloc>().add(
                  EncryptionEvent.updatePassword(value),
                );
              },
              onSuffixIconPressed: () {
                context.read<EncryptionBloc>().add(
                  const EncryptionEvent.togglePasswordVisibility(),
                );
              },
            ),
            const SizedBox(height: 40),

            // ── Encrypt button ──────────────────────────
            Button(
              state.isEncrypting ? 'Encrypting...' : 'Start Encryption',
              busy: state.isEncrypting,
              onPressed: state.canEncrypt
                  ? () {
                      context.read<EncryptionBloc>().add(
                        const EncryptionEvent.startEncryption(),
                      );
                    }
                  : null,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
