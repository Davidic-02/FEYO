import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';

class SizeTile extends StatelessWidget {
  final String label;
  final String value;
  final String sub;
  final Color valueColor;
  final Color? subColor;

  const SizeTile({
    super.key,
    required this.label,
    required this.value,
    required this.sub,
    required this.valueColor,
    this.subColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: AppColors.mutedText,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: valueColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          sub,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: subColor ?? AppColors.mutedText,
          ),
        ),
      ],
    );
  }
}
