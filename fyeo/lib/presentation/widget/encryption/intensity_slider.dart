import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/encryption/encryption_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';

class IntensitySlider extends StatelessWidget {
  final double intensity;

  const IntensitySlider({Key? key, required this.intensity}) : super(key: key);
  String _getIntensityLabel(double value) {
    if (value < 0.3) return 'Low';
    if (value < 0.6) return 'Medium';
    if (value < 0.8) return 'High';
    return 'Maximum';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Diffusion Intensity',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primaryBlue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                _getIntensityLabel(intensity),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 6,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 12,
              elevation: 4,
            ),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
          ),
          child: Slider(
            value: intensity,
            min: 0.0,
            max: 1.0,
            divisions: 10,
            activeColor: AppColors.accentNeon,
            inactiveColor: AppColors.darkSurface,
            onChanged: (value) {
              context.read<EncryptionBloc>().add(
                EncryptionEvent.updateIntensity(value),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Higher intensity = stronger encryption (slower)',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: AppColors.mutedText),
        ),
      ],
    );
  }
}
