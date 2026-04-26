import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(
            color: AppColors.accentNeon,
            strokeWidth: 3,
          ),
          const SizedBox(height: 16),
          Text(
            'Loading your files...',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppColors.mutedText),
          ),
        ],
      ),
    );
  }
}
