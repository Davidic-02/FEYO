import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/encryption_success/encryption_success_bloc.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/constants/app_spacing.dart';
import 'package:fyeo/enum/export_status.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:fyeo/presentation/widget/encryption/noise_painter.dart';
import 'package:fyeo/presentation/widget/encryption/size_tile.dart';
import 'package:fyeo/router/app_routes.dart';
import 'package:go_router/go_router.dart';

class EncryptionSuccess extends StatelessWidget {
  final EncryptionResult result;
  const EncryptionSuccess({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EncryptionSuccessBloc(result: result),
      child: const _SuccessView(),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<EncryptionSuccessBloc, EncryptionSuccessState>(
      listener: (context, state) {
        if (state.pendingRoute is DashboardRoute) {
          context.read()<EncryptionSuccessBloc>().add(
            const EncryptionSuccessEvent.routeConsumed(),
          );
          context.go('/dashboard');
        }

        if (state.exportStatus == ExportStatus.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Saved to gallery'),
              backgroundColor: AppColors.greenSuccess,
            ),
          );
        }

        if (state.hasExportError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.exportErrorMessage ?? 'Export failed'),
              backgroundColor: AppColors.redError,
            ),
          );
        }

        if (state.pathCopied) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('File path copied')));
        }
      },

      child: Scaffold(
        backgroundColor: AppColors.darkBg,
        body: BlocBuilder<EncryptionSuccessBloc, EncryptionSuccessState>(
          builder: (context, state) {
            return SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'F.E.Y.O.  SECURE',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                color: AppColors.whiteColor,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.verticalSpaceMedium,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.verified,
                        color: AppColors.greenSuccess,
                        size: 16,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'AES-256 ENCRYPTED',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.greenSuccess,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),

                  AppSpacing.verticalSpaceMedium,
                  Text(
                    'Encryption Successful',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Blurred encrypted preview
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: AppColors.darkSurface,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Stack(
                              children: [
                                // TODO: Replace with actual blurred image
                                // ImageFiltered(
                                //   imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                //   child: Image.file(File(state.encryptionResult.encryptedFilePath)),
                                // ),
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        AppColors.primaryBlue.withValues(
                                          alpha: 0.3,
                                        ),
                                        AppColors.darkBg,
                                        AppColors.primaryBlue.withValues(
                                          alpha: 0.1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Noise overlay to simulate encrypted look
                                Positioned.fill(
                                  child: CustomPaint(painter: NoisePainter()),
                                ),
                                // Lock icon overlay
                                Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: AppColors.darkBg.withValues(
                                        alpha: 0.6,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.lock,
                                      color: AppColors.accentNeon,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                // Key info overlay at bottom
                                Positioned(
                                  bottom: 12,
                                  left: 12,
                                  child: Text(
                                    'KEY ID: ${state.encryptionResult.encryptedFilePath.hashCode.toRadixString(16).toUpperCase()}\nNONCE: FP2E16B9',
                                    style: TextStyle(
                                      color: AppColors.accentNeon.withValues(
                                        alpha: 0.6,
                                      ),
                                      fontSize: 9,
                                      fontFamily: 'monospace',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizeTile(
                          label: 'ORIGINAL SIZE',
                          value:
                              '${(state.encryptionResult.originalSize / 1000000).toStringAsFixed(1)} MB',
                          sub: 'Baseline',
                          valueColor: AppColors.whiteColor,
                        ),
                        SizeTile(
                          label: 'OPTIMIZED SIZE',
                          value:
                              '${(state.encryptionResult.encryptedSize / 1000000).toStringAsFixed(1)} MB',
                          sub: state.encryptionResult.compressionRatio,
                          valueColor: AppColors.accentNeon,
                          subColor: AppColors.accentNeon,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton.icon(
                            onPressed: state.isExporting
                                ? null
                                : () => context.read<EncryptionSuccessBloc>().add(
                                    const EncryptionSuccessEvent.exportToGallery(),
                                  ),
                            icon: state.isExporting
                                ? const SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.white,
                                    ),
                                  )
                                : const Icon(Icons.upload),
                            label: Text(
                              state.isExporting
                                  ? 'Exporting...'
                                  : 'Export to Gallery',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryBlue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Secondary actions row
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () =>
                                    context.read<EncryptionSuccessBloc>().add(
                                      const EncryptionSuccessEvent.shareFile(),
                                    ),
                                icon: const Icon(Icons.share, size: 18),
                                label: const Text('Share'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: AppColors.whiteColor,
                                  side: BorderSide(
                                    color: AppColors.whiteColor.withOpacity(
                                      0.2,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () =>
                                    context.read<EncryptionSuccessBloc>().add(
                                      const EncryptionSuccessEvent.goToDashboard(),
                                    ),
                                icon: const Icon(Icons.home_outlined, size: 18),
                                label: const Text('Dashboard'),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: AppColors.whiteColor,
                                  side: BorderSide(
                                    color: AppColors.whiteColor.withValues(
                                      alpha: 0.2,
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
