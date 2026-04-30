import 'package:freezed_annotation/freezed_annotation.dart';

part 'encryption_result.freezed.dart';
part 'encryption_result.g.dart';

@freezed
abstract class EncryptionResult with _$EncryptionResult {
  const factory EncryptionResult({
    required String encryptedFilePath,
    required String originalFileName,
    required int originalSize,
    required int encryptedSize,
    required String compressionRatio, // e.g., "-4.0%"
    required DateTime encryptedAt,
    required bool usedSmartCompression,
    required double intensityUsed,
  }) = _EncryptionResult;

  factory EncryptionResult.fromJson(Map<String, dynamic> json) =>
      _$EncryptionResultFromJson(json);
}
