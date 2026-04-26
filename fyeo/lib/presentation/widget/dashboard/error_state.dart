import 'package:flutter/material.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';

class ErrorStateWidget extends StatelessWidget {
  final DashboardState state;
  final DashboardBloc bloc;

  const ErrorStateWidget({super.key, required this.state, required this.bloc});

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
                color: AppColors.redError.withValues(alpha: 0.2),
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
              'Something Went Wrong',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              state.errorMessage ?? 'An unexpected error occurred',
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
                  bloc.add(const DashboardEvent.retry());
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Try Again'),
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
