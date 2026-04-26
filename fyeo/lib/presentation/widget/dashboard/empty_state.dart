import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

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
                color: AppColors.darkSurface,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.inbox_outlined,
                size: 56,
                color: AppColors.mutedText,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'No Encrypted Files Yet',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Start by encrypting your first image to get started',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: AppColors.mutedText),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: 200,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  context.read<DashboardBloc>().add(
                    const DashboardEvent.pickFile(),
                  );
                },
                icon: const Icon(Icons.add_a_photo),
                label: const Text('Encrypt Image'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
