import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class SecurityBadge extends StatelessWidget {
  final String status;

  const SecurityBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final isEngaged = status == 'Engaged';

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isEngaged ? AppColors.accentNeon : AppColors.redError,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.shield,
            color: isEngaged ? AppColors.accentNeon : AppColors.redError,
            size: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Security Status',
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(color: AppColors.mutedText),
                ),
                Text(
                  status,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isEngaged
                        ? AppColors.accentNeon
                        : AppColors.redError,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
