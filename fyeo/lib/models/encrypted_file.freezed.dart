// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedFile {

 String get id; String get fileName; String get filePath; int get originalSize; int get encryptedSize; DateTime get createdAt; DateTime get lastModified; String get compressionRatio;// e.g., "-4.0%"
 bool get isSmartCompressed;
/// Create a copy of EncryptedFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptedFileCopyWith<EncryptedFile> get copyWith => _$EncryptedFileCopyWithImpl<EncryptedFile>(this as EncryptedFile, _$identity);

  /// Serializes this EncryptedFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptedFile&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.originalSize, originalSize) || other.originalSize == originalSize)&&(identical(other.encryptedSize, encryptedSize) || other.encryptedSize == encryptedSize)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.compressionRatio, compressionRatio) || other.compressionRatio == compressionRatio)&&(identical(other.isSmartCompressed, isSmartCompressed) || other.isSmartCompressed == isSmartCompressed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,filePath,originalSize,encryptedSize,createdAt,lastModified,compressionRatio,isSmartCompressed);

@override
String toString() {
  return 'EncryptedFile(id: $id, fileName: $fileName, filePath: $filePath, originalSize: $originalSize, encryptedSize: $encryptedSize, createdAt: $createdAt, lastModified: $lastModified, compressionRatio: $compressionRatio, isSmartCompressed: $isSmartCompressed)';
}


}

/// @nodoc
abstract mixin class $EncryptedFileCopyWith<$Res>  {
  factory $EncryptedFileCopyWith(EncryptedFile value, $Res Function(EncryptedFile) _then) = _$EncryptedFileCopyWithImpl;
@useResult
$Res call({
 String id, String fileName, String filePath, int originalSize, int encryptedSize, DateTime createdAt, DateTime lastModified, String compressionRatio, bool isSmartCompressed
});




}
/// @nodoc
class _$EncryptedFileCopyWithImpl<$Res>
    implements $EncryptedFileCopyWith<$Res> {
  _$EncryptedFileCopyWithImpl(this._self, this._then);

  final EncryptedFile _self;
  final $Res Function(EncryptedFile) _then;

/// Create a copy of EncryptedFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileName = null,Object? filePath = null,Object? originalSize = null,Object? encryptedSize = null,Object? createdAt = null,Object? lastModified = null,Object? compressionRatio = null,Object? isSmartCompressed = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,originalSize: null == originalSize ? _self.originalSize : originalSize // ignore: cast_nullable_to_non_nullable
as int,encryptedSize: null == encryptedSize ? _self.encryptedSize : encryptedSize // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,compressionRatio: null == compressionRatio ? _self.compressionRatio : compressionRatio // ignore: cast_nullable_to_non_nullable
as String,isSmartCompressed: null == isSmartCompressed ? _self.isSmartCompressed : isSmartCompressed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EncryptedFile].
extension EncryptedFilePatterns on EncryptedFile {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptedFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptedFile() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptedFile value)  $default,){
final _that = this;
switch (_that) {
case _EncryptedFile():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptedFile value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptedFile() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fileName,  String filePath,  int originalSize,  int encryptedSize,  DateTime createdAt,  DateTime lastModified,  String compressionRatio,  bool isSmartCompressed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptedFile() when $default != null:
return $default(_that.id,_that.fileName,_that.filePath,_that.originalSize,_that.encryptedSize,_that.createdAt,_that.lastModified,_that.compressionRatio,_that.isSmartCompressed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fileName,  String filePath,  int originalSize,  int encryptedSize,  DateTime createdAt,  DateTime lastModified,  String compressionRatio,  bool isSmartCompressed)  $default,) {final _that = this;
switch (_that) {
case _EncryptedFile():
return $default(_that.id,_that.fileName,_that.filePath,_that.originalSize,_that.encryptedSize,_that.createdAt,_that.lastModified,_that.compressionRatio,_that.isSmartCompressed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fileName,  String filePath,  int originalSize,  int encryptedSize,  DateTime createdAt,  DateTime lastModified,  String compressionRatio,  bool isSmartCompressed)?  $default,) {final _that = this;
switch (_that) {
case _EncryptedFile() when $default != null:
return $default(_that.id,_that.fileName,_that.filePath,_that.originalSize,_that.encryptedSize,_that.createdAt,_that.lastModified,_that.compressionRatio,_that.isSmartCompressed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EncryptedFile implements EncryptedFile {
  const _EncryptedFile({required this.id, required this.fileName, required this.filePath, required this.originalSize, required this.encryptedSize, required this.createdAt, required this.lastModified, required this.compressionRatio, required this.isSmartCompressed});
  factory _EncryptedFile.fromJson(Map<String, dynamic> json) => _$EncryptedFileFromJson(json);

@override final  String id;
@override final  String fileName;
@override final  String filePath;
@override final  int originalSize;
@override final  int encryptedSize;
@override final  DateTime createdAt;
@override final  DateTime lastModified;
@override final  String compressionRatio;
// e.g., "-4.0%"
@override final  bool isSmartCompressed;

/// Create a copy of EncryptedFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptedFileCopyWith<_EncryptedFile> get copyWith => __$EncryptedFileCopyWithImpl<_EncryptedFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptedFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptedFile&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.originalSize, originalSize) || other.originalSize == originalSize)&&(identical(other.encryptedSize, encryptedSize) || other.encryptedSize == encryptedSize)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.compressionRatio, compressionRatio) || other.compressionRatio == compressionRatio)&&(identical(other.isSmartCompressed, isSmartCompressed) || other.isSmartCompressed == isSmartCompressed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,filePath,originalSize,encryptedSize,createdAt,lastModified,compressionRatio,isSmartCompressed);

@override
String toString() {
  return 'EncryptedFile(id: $id, fileName: $fileName, filePath: $filePath, originalSize: $originalSize, encryptedSize: $encryptedSize, createdAt: $createdAt, lastModified: $lastModified, compressionRatio: $compressionRatio, isSmartCompressed: $isSmartCompressed)';
}


}

/// @nodoc
abstract mixin class _$EncryptedFileCopyWith<$Res> implements $EncryptedFileCopyWith<$Res> {
  factory _$EncryptedFileCopyWith(_EncryptedFile value, $Res Function(_EncryptedFile) _then) = __$EncryptedFileCopyWithImpl;
@override @useResult
$Res call({
 String id, String fileName, String filePath, int originalSize, int encryptedSize, DateTime createdAt, DateTime lastModified, String compressionRatio, bool isSmartCompressed
});




}
/// @nodoc
class __$EncryptedFileCopyWithImpl<$Res>
    implements _$EncryptedFileCopyWith<$Res> {
  __$EncryptedFileCopyWithImpl(this._self, this._then);

  final _EncryptedFile _self;
  final $Res Function(_EncryptedFile) _then;

/// Create a copy of EncryptedFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileName = null,Object? filePath = null,Object? originalSize = null,Object? encryptedSize = null,Object? createdAt = null,Object? lastModified = null,Object? compressionRatio = null,Object? isSmartCompressed = null,}) {
  return _then(_EncryptedFile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,originalSize: null == originalSize ? _self.originalSize : originalSize // ignore: cast_nullable_to_non_nullable
as int,encryptedSize: null == encryptedSize ? _self.encryptedSize : encryptedSize // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,compressionRatio: null == compressionRatio ? _self.compressionRatio : compressionRatio // ignore: cast_nullable_to_non_nullable
as String,isSmartCompressed: null == isSmartCompressed ? _self.isSmartCompressed : isSmartCompressed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
