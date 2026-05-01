import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/encryption/encryption_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';

class EncryptionErrorStateWidget extends StatelessWidget {
  final String errorMessage;

  const EncryptionErrorStateWidget({Key? key, required this.errorMessage})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.redError.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.error_outline,
                size: 56,
                color: AppColors.redError,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Encryption Failed',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              errorMessage,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.mutedText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      context.read<EncryptionBloc>().add(
                        const EncryptionEvent.encryptionCancelled(),
                      );
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.mutedText),
                    ),
                    child: const Text('Go Back'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      context.read<EncryptionBloc>().add(
                        const EncryptionEvent.retryEncryption(),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
