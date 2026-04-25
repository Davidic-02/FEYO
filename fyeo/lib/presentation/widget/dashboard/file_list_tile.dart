import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:fyeo/models/encrypted_file.dart';

class FileListTile extends StatelessWidget {
  final EncryptedFile file;
  final bool isDeleting;
  final bool isSharing;
  final VoidCallback onDelete;
  final VoidCallback onShare;
  final VoidCallback onTap;

  const FileListTile({
    super.key,
    required this.file,
    required this.isDeleting,
    required this.isSharing,
    required this.onDelete,
    required this.onShare,
    required this.onTap,
  });

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.darkSurface,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryBlue.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image, color: AppColors.primaryBlue),
        ),
        title: Text(
          file.fileName,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          '${_formatBytes(file.originalSize)} → ${_formatBytes(file.encryptedSize)} (${file.compressionRatio})',
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: AppColors.mutedText),
        ),
        trailing: isDeleting || isSharing
            ? SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.accentNeon,
                  ),
                ),
              )
            : SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.share),
                      iconSize: 18,
                      onPressed: isSharing ? null : onShare,
                      color: AppColors.primaryBlue,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      iconSize: 18,
                      onPressed: isDeleting ? null : onDelete,
                      color: AppColors.redError,
                    ),
                  ],
                ),
              ),
        onTap: onTap,
      ),
    );
  }
}
