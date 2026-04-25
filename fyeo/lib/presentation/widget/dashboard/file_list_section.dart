import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fyeo/bloc/dashboard/dashboard_bloc.dart';
import 'package:fyeo/models/encrypted_file.dart';
import 'file_list_tile.dart';

class FileListSection extends StatelessWidget {
  final List<EncryptedFile> files;
  final Set<String> deletingFileIds;
  final Set<String> sharingFileIds;

  const FileListSection({
    super.key,
    required this.files,
    required this.deletingFileIds,
    required this.sharingFileIds,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recently Encrypted',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: files.length,
          itemBuilder: (context, index) {
            final file = files[index];
            return FileListTile(
              file: file,
              isDeleting: deletingFileIds.contains(file.id),
              isSharing: sharingFileIds.contains(file.id),
              onDelete: () {
                context.read<DashboardBloc>().add(
                  DashboardEvent.deleteFile(file.id),
                );
              },
              onShare: () {
                context.read<DashboardBloc>().add(
                  DashboardEvent.shareFile(file.id),
                );
              },
              onTap: () {
                context.read<DashboardBloc>().add(
                  DashboardEvent.openRecentFile(file),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
