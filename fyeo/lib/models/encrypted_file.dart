import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_file.freezed.dart';
part 'encrypted_file.g.dart';

@freezed
abstract class EncryptedFile with _$EncryptedFile {
  const factory EncryptedFile({
    required String id,
    required String fileName,
    required String filePath,
    required int originalSize,
    required int encryptedSize,
    required DateTime createdAt,
    required DateTime lastModified,
    required String compressionRatio, // e.g., "-4.0%"
    required bool isSmartCompressed,
  }) = _EncryptedFile;

  factory EncryptedFile.fromJson(Map<String, dynamic> json) =>
      _$EncryptedFileFromJson(json);
}
