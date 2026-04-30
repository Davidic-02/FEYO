// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encryption_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptionResult _$EncryptionResultFromJson(Map<String, dynamic> json) =>
    _EncryptionResult(
      encryptedFilePath: json['encryptedFilePath'] as String,
      originalFileName: json['originalFileName'] as String,
      originalSize: (json['originalSize'] as num).toInt(),
      encryptedSize: (json['encryptedSize'] as num).toInt(),
      compressionRatio: json['compressionRatio'] as String,
      encryptedAt: DateTime.parse(json['encryptedAt'] as String),
      usedSmartCompression: json['usedSmartCompression'] as bool,
      intensityUsed: (json['intensityUsed'] as num).toDouble(),
    );

Map<String, dynamic> _$EncryptionResultToJson(_EncryptionResult instance) =>
    <String, dynamic>{
      'encryptedFilePath': instance.encryptedFilePath,
      'originalFileName': instance.originalFileName,
      'originalSize': instance.originalSize,
      'encryptedSize': instance.encryptedSize,
      'compressionRatio': instance.compressionRatio,
      'encryptedAt': instance.encryptedAt.toIso8601String(),
      'usedSmartCompression': instance.usedSmartCompression,
      'intensityUsed': instance.intensityUsed,
    };
