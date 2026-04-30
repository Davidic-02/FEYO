import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class EncryptionProgressDialog extends StatelessWidget {
  final double progress;

  const EncryptionProgressDialog({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.darkSurface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.lock, size: 48, color: AppColors.accentNeon),
            const SizedBox(height: 24),
            Text(
              'Encrypting...',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: progress / 100,
                minHeight: 8,
                backgroundColor: AppColors.darkBg,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  AppColors.accentNeon,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '${progress.toStringAsFixed(0)}%',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AppColors.accentNeon,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'This may take a few moments...',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppColors.mutedText),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
