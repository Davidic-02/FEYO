import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/decryption/decryption_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/presentation/widget/button.dart';
import 'package:fyeo/presentation/widget/custom_text_form_field.dart';
import 'package:go_router/go_router.dart';

class DecryptionScreen extends StatelessWidget {
  const DecryptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DecryptionBloc(),
      child: const _DecryptionView(),
    );
  }
}

class _DecryptionView extends StatelessWidget {
  const _DecryptionView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<DecryptionBloc, DecryptionState>(
      listener: (context, state) {
        if (state.hasError && state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: AppColors.redError,
            ),
          );
        }

        // TODO: When decrypted, navigate to image viewer
        // if (state.isSuccess && state.decryptedFilePath != null) {
        //   context.push('/view', extra: state.decryptedFilePath);
        // }
      },
      child: Scaffold(
        backgroundColor: AppColors.darkBg,
        appBar: AppBar(
          backgroundColor: AppColors.darkBg,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.whiteColor),
            onPressed: () => context.pop(),
          ),
          title: const Text(
            'Decrypt Image',
            style: TextStyle(color: AppColors.whiteColor),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<DecryptionBloc, DecryptionState>(
          builder: (context, state) {
            if (state.isDecrypting) {
              return _buildDecryptingView(context, state);
            }
            return _buildFormView(context, state);
          },
        ),
      ),
    );
  }

  Widget _buildFormView(BuildContext context, DecryptionState state) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Header ──────────────────────────────────
            Text(
              'Secure Decryption',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Select your encrypted file and enter the\nsecret key to reveal the content.',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.mutedText,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 32),

            // ── File picker area ─────────────────────────
            GestureDetector(
              onTap: () => context.read<DecryptionBloc>().add(
                const DecryptionEvent.pickEncryptedFile(),
              ),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: AppColors.darkSurface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: state.hasFile
                        ? AppColors.primaryBlue
                        : AppColors.mutedText.withOpacity(0.3),
                    width: state.hasFile ? 2 : 1,
                  ),
                ),
                child: state.isPickingFile
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryBlue,
                        ),
                      )
                    : state.hasFile
                    ? _SelectedFilePreview(
                        fileName: state.selectedFileName ?? '',
                      )
                    : _EmptyFilePicker(),
              ),
            ),
            const SizedBox(height: 28),

            // ── Passphrase field ─────────────────────────
            Text(
              'Pass-phrase',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            CustomTextFormField(
              title: 'Pass-phrase',
              hintText: '••••••••••',
              keyboardType: TextInputType.text,
              obscureText: !state.isPassphraseVisible,
              isPassword: true,
              errorText: state.passphrase.isPure || state.passphrase.isValid
                  ? null
                  : "Passphrase must be at least 8 characters.",

              onChanged: (v) => context.read<DecryptionBloc>().add(
                DecryptionEvent.updatePassphrase(v),
              ),

              onSuffixIconPressed: () => context.read<DecryptionBloc>().add(
                const DecryptionEvent.togglePassphraseVisibility(),
              ),
            ),
            const SizedBox(height: 36),

            // ── Decrypt button ───────────────────────────
            Button(
              'Decrypt & Reveal',
              icon: Icons.lock_open,
              busy: state.isDecrypting,
              onPressed: state.isFormValid
                  ? () => context.read<DecryptionBloc>().add(
                      const DecryptionEvent.decryptAndReveal(),
                    )
                  : null,
            ),
            const SizedBox(height: 24),

            // ── End-to-end note ──────────────────────────
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 14,
                        color: AppColors.mutedText.withOpacity(0.6),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'END-TO-END ENCRYPTED',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.mutedText.withOpacity(0.6),
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Decryption happens locally on your\ndevice. F.Y.O never stores your pass-\nphrases.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.mutedText.withOpacity(0.5),
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecryptingView(BuildContext context, DecryptionState state) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_open, size: 64, color: AppColors.primaryBlue),
            const SizedBox(height: 24),
            Text(
              'Decrypting...',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(color: AppColors.whiteColor),
            ),
            const SizedBox(height: 24),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: state.decryptionProgress / 100,
                minHeight: 8,
                backgroundColor: AppColors.darkSurface,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.primaryBlue,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              '${state.decryptionProgress.toStringAsFixed(0)}%',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.primaryBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Supporting widgets ─────────────────────────────────────────

class _EmptyFilePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.person_search_outlined,
          size: 48,
          color: AppColors.primaryBlue.withOpacity(0.7),
        ),
        const SizedBox(height: 12),
        Text(
          'Tap to select encrypted file',
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.mutedText),
        ),
      ],
    );
  }
}

class _SelectedFilePreview extends StatelessWidget {
  final String fileName;
  const _SelectedFilePreview({required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.insert_drive_file_outlined,
          size: 48,
          color: AppColors.primaryBlue,
        ),
        const SizedBox(height: 12),
        Text(
          fileName,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          'Tap to change image',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: AppColors.mutedText),
        ),
      ],
    );
  }
}
