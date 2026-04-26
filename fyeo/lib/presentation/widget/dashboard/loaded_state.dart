import 'package:flutter/material.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/presentation/widget/dashboard/auto_compression.dart';
import 'package:fyeo/presentation/widget/dashboard/encrypt_button.dart';

import 'file_list_section.dart';
import 'security_badge.dart';

class LoadedStateWidget extends StatelessWidget {
  final DashboardState state;
  final DashboardBloc bloc;

  const LoadedStateWidget({super.key, required this.state, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Security Badge
            SecurityBadge(status: state.securityStatus),
            const SizedBox(height: 24),

            // Auto Compression Section
            AutoCompressionSection(isEnabled: state.isCompressionEnabled),
            const SizedBox(height: 24),

            // Encrypt Button
            EncryptButtonSection(),
            const SizedBox(height: 32),

            // Recently Encrypted Files List
            FileListSection(
              files: state.recentFiles,
              deletingFileIds: state.deletingFileIds,
              sharingFileIds: state.sharingFileIds,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
