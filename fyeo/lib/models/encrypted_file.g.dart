// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedFile _$EncryptedFileFromJson(Map<String, dynamic> json) =>
    _EncryptedFile(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      filePath: json['filePath'] as String,
      originalSize: (json['originalSize'] as num).toInt(),
      encryptedSize: (json['encryptedSize'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastModified: DateTime.parse(json['lastModified'] as String),
      compressionRatio: json['compressionRatio'] as String,
      isSmartCompressed: json['isSmartCompressed'] as bool,
    );

Map<String, dynamic> _$EncryptedFileToJson(_EncryptedFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'filePath': instance.filePath,
      'originalSize': instance.originalSize,
      'encryptedSize': instance.encryptedSize,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastModified': instance.lastModified.toIso8601String(),
      'compressionRatio': instance.compressionRatio,
      'isSmartCompressed': instance.isSmartCompressed,
    };
