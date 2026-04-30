// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encryption_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptionResult {

 String get encryptedFilePath; String get originalFileName; int get originalSize; int get encryptedSize; String get compressionRatio;// e.g., "-4.0%"
 DateTime get encryptedAt; bool get usedSmartCompression; double get intensityUsed;
/// Create a copy of EncryptionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptionResultCopyWith<EncryptionResult> get copyWith => _$EncryptionResultCopyWithImpl<EncryptionResult>(this as EncryptionResult, _$identity);

  /// Serializes this EncryptionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionResult&&(identical(other.encryptedFilePath, encryptedFilePath) || other.encryptedFilePath == encryptedFilePath)&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.originalSize, originalSize) || other.originalSize == originalSize)&&(identical(other.encryptedSize, encryptedSize) || other.encryptedSize == encryptedSize)&&(identical(other.compressionRatio, compressionRatio) || other.compressionRatio == compressionRatio)&&(identical(other.encryptedAt, encryptedAt) || other.encryptedAt == encryptedAt)&&(identical(other.usedSmartCompression, usedSmartCompression) || other.usedSmartCompression == usedSmartCompression)&&(identical(other.intensityUsed, intensityUsed) || other.intensityUsed == intensityUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedFilePath,originalFileName,originalSize,encryptedSize,compressionRatio,encryptedAt,usedSmartCompression,intensityUsed);

@override
String toString() {
  return 'EncryptionResult(encryptedFilePath: $encryptedFilePath, originalFileName: $originalFileName, originalSize: $originalSize, encryptedSize: $encryptedSize, compressionRatio: $compressionRatio, encryptedAt: $encryptedAt, usedSmartCompression: $usedSmartCompression, intensityUsed: $intensityUsed)';
}


}

/// @nodoc
abstract mixin class $EncryptionResultCopyWith<$Res>  {
  factory $EncryptionResultCopyWith(EncryptionResult value, $Res Function(EncryptionResult) _then) = _$EncryptionResultCopyWithImpl;
@useResult
$Res call({
 String encryptedFilePath, String originalFileName, int originalSize, int encryptedSize, String compressionRatio, DateTime encryptedAt, bool usedSmartCompression, double intensityUsed
});




}
/// @nodoc
class _$EncryptionResultCopyWithImpl<$Res>
    implements $EncryptionResultCopyWith<$Res> {
  _$EncryptionResultCopyWithImpl(this._self, this._then);

  final EncryptionResult _self;
  final $Res Function(EncryptionResult) _then;

/// Create a copy of EncryptionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptedFilePath = null,Object? originalFileName = null,Object? originalSize = null,Object? encryptedSize = null,Object? compressionRatio = null,Object? encryptedAt = null,Object? usedSmartCompression = null,Object? intensityUsed = null,}) {
  return _then(_self.copyWith(
encryptedFilePath: null == encryptedFilePath ? _self.encryptedFilePath : encryptedFilePath // ignore: cast_nullable_to_non_nullable
as String,originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,originalSize: null == originalSize ? _self.originalSize : originalSize // ignore: cast_nullable_to_non_nullable
as int,encryptedSize: null == encryptedSize ? _self.encryptedSize : encryptedSize // ignore: cast_nullable_to_non_nullable
as int,compressionRatio: null == compressionRatio ? _self.compressionRatio : compressionRatio // ignore: cast_nullable_to_non_nullable
as String,encryptedAt: null == encryptedAt ? _self.encryptedAt : encryptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,usedSmartCompression: null == usedSmartCompression ? _self.usedSmartCompression : usedSmartCompression // ignore: cast_nullable_to_non_nullable
as bool,intensityUsed: null == intensityUsed ? _self.intensityUsed : intensityUsed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EncryptionResult].
extension EncryptionResultPatterns on EncryptionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptionResult value)  $default,){
final _that = this;
switch (_that) {
case _EncryptionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptionResult value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String encryptedFilePath,  String originalFileName,  int originalSize,  int encryptedSize,  String compressionRatio,  DateTime encryptedAt,  bool usedSmartCompression,  double intensityUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptionResult() when $default != null:
return $default(_that.encryptedFilePath,_that.originalFileName,_that.originalSize,_that.encryptedSize,_that.compressionRatio,_that.encryptedAt,_that.usedSmartCompression,_that.intensityUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String encryptedFilePath,  String originalFileName,  int originalSize,  int encryptedSize,  String compressionRatio,  DateTime encryptedAt,  bool usedSmartCompression,  double intensityUsed)  $default,) {final _that = this;
switch (_that) {
case _EncryptionResult():
return $default(_that.encryptedFilePath,_that.originalFileName,_that.originalSize,_that.encryptedSize,_that.compressionRatio,_that.encryptedAt,_that.usedSmartCompression,_that.intensityUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String encryptedFilePath,  String originalFileName,  int originalSize,  int encryptedSize,  String compressionRatio,  DateTime encryptedAt,  bool usedSmartCompression,  double intensityUsed)?  $default,) {final _that = this;
switch (_that) {
case _EncryptionResult() when $default != null:
return $default(_that.encryptedFilePath,_that.originalFileName,_that.originalSize,_that.encryptedSize,_that.compressionRatio,_that.encryptedAt,_that.usedSmartCompression,_that.intensityUsed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EncryptionResult implements EncryptionResult {
  const _EncryptionResult({required this.encryptedFilePath, required this.originalFileName, required this.originalSize, required this.encryptedSize, required this.compressionRatio, required this.encryptedAt, required this.usedSmartCompression, required this.intensityUsed});
  factory _EncryptionResult.fromJson(Map<String, dynamic> json) => _$EncryptionResultFromJson(json);

@override final  String encryptedFilePath;
@override final  String originalFileName;
@override final  int originalSize;
@override final  int encryptedSize;
@override final  String compressionRatio;
// e.g., "-4.0%"
@override final  DateTime encryptedAt;
@override final  bool usedSmartCompression;
@override final  double intensityUsed;

/// Create a copy of EncryptionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptionResultCopyWith<_EncryptionResult> get copyWith => __$EncryptionResultCopyWithImpl<_EncryptionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptionResult&&(identical(other.encryptedFilePath, encryptedFilePath) || other.encryptedFilePath == encryptedFilePath)&&(identical(other.originalFileName, originalFileName) || other.originalFileName == originalFileName)&&(identical(other.originalSize, originalSize) || other.originalSize == originalSize)&&(identical(other.encryptedSize, encryptedSize) || other.encryptedSize == encryptedSize)&&(identical(other.compressionRatio, compressionRatio) || other.compressionRatio == compressionRatio)&&(identical(other.encryptedAt, encryptedAt) || other.encryptedAt == encryptedAt)&&(identical(other.usedSmartCompression, usedSmartCompression) || other.usedSmartCompression == usedSmartCompression)&&(identical(other.intensityUsed, intensityUsed) || other.intensityUsed == intensityUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedFilePath,originalFileName,originalSize,encryptedSize,compressionRatio,encryptedAt,usedSmartCompression,intensityUsed);

@override
String toString() {
  return 'EncryptionResult(encryptedFilePath: $encryptedFilePath, originalFileName: $originalFileName, originalSize: $originalSize, encryptedSize: $encryptedSize, compressionRatio: $compressionRatio, encryptedAt: $encryptedAt, usedSmartCompression: $usedSmartCompression, intensityUsed: $intensityUsed)';
}


}

/// @nodoc
abstract mixin class _$EncryptionResultCopyWith<$Res> implements $EncryptionResultCopyWith<$Res> {
  factory _$EncryptionResultCopyWith(_EncryptionResult value, $Res Function(_EncryptionResult) _then) = __$EncryptionResultCopyWithImpl;
@override @useResult
$Res call({
 String encryptedFilePath, String originalFileName, int originalSize, int encryptedSize, String compressionRatio, DateTime encryptedAt, bool usedSmartCompression, double intensityUsed
});




}
/// @nodoc
class __$EncryptionResultCopyWithImpl<$Res>
    implements _$EncryptionResultCopyWith<$Res> {
  __$EncryptionResultCopyWithImpl(this._self, this._then);

  final _EncryptionResult _self;
  final $Res Function(_EncryptionResult) _then;

/// Create a copy of EncryptionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptedFilePath = null,Object? originalFileName = null,Object? originalSize = null,Object? encryptedSize = null,Object? compressionRatio = null,Object? encryptedAt = null,Object? usedSmartCompression = null,Object? intensityUsed = null,}) {
  return _then(_EncryptionResult(
encryptedFilePath: null == encryptedFilePath ? _self.encryptedFilePath : encryptedFilePath // ignore: cast_nullable_to_non_nullable
as String,originalFileName: null == originalFileName ? _self.originalFileName : originalFileName // ignore: cast_nullable_to_non_nullable
as String,originalSize: null == originalSize ? _self.originalSize : originalSize // ignore: cast_nullable_to_non_nullable
as int,encryptedSize: null == encryptedSize ? _self.encryptedSize : encryptedSize // ignore: cast_nullable_to_non_nullable
as int,compressionRatio: null == compressionRatio ? _self.compressionRatio : compressionRatio // ignore: cast_nullable_to_non_nullable
as String,encryptedAt: null == encryptedAt ? _self.encryptedAt : encryptedAt // ignore: cast_nullable_to_non_nullable
as DateTime,usedSmartCompression: null == usedSmartCompression ? _self.usedSmartCompression : usedSmartCompression // ignore: cast_nullable_to_non_nullable
as bool,intensityUsed: null == intensityUsed ? _self.intensityUsed : intensityUsed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
