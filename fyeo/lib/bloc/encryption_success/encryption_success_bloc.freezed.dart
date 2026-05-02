// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encryption_success_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EncryptionSuccessEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionSuccessEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent()';
}


}

/// @nodoc
class $EncryptionSuccessEventCopyWith<$Res>  {
$EncryptionSuccessEventCopyWith(EncryptionSuccessEvent _, $Res Function(EncryptionSuccessEvent) __);
}


/// Adds pattern-matching-related methods to [EncryptionSuccessEvent].
extension EncryptionSuccessEventPatterns on EncryptionSuccessEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ExportToGallery value)?  exportToGallery,TResult Function( _ShareFile value)?  shareFile,TResult Function( _CopyFilePath value)?  copyFilePath,TResult Function( _GoToDashboard value)?  goToDashboard,TResult Function( _RouteConsumed value)?  routeConsumed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExportToGallery() when exportToGallery != null:
return exportToGallery(_that);case _ShareFile() when shareFile != null:
return shareFile(_that);case _CopyFilePath() when copyFilePath != null:
return copyFilePath(_that);case _GoToDashboard() when goToDashboard != null:
return goToDashboard(_that);case _RouteConsumed() when routeConsumed != null:
return routeConsumed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ExportToGallery value)  exportToGallery,required TResult Function( _ShareFile value)  shareFile,required TResult Function( _CopyFilePath value)  copyFilePath,required TResult Function( _GoToDashboard value)  goToDashboard,required TResult Function( _RouteConsumed value)  routeConsumed,}){
final _that = this;
switch (_that) {
case _ExportToGallery():
return exportToGallery(_that);case _ShareFile():
return shareFile(_that);case _CopyFilePath():
return copyFilePath(_that);case _GoToDashboard():
return goToDashboard(_that);case _RouteConsumed():
return routeConsumed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ExportToGallery value)?  exportToGallery,TResult? Function( _ShareFile value)?  shareFile,TResult? Function( _CopyFilePath value)?  copyFilePath,TResult? Function( _GoToDashboard value)?  goToDashboard,TResult? Function( _RouteConsumed value)?  routeConsumed,}){
final _that = this;
switch (_that) {
case _ExportToGallery() when exportToGallery != null:
return exportToGallery(_that);case _ShareFile() when shareFile != null:
return shareFile(_that);case _CopyFilePath() when copyFilePath != null:
return copyFilePath(_that);case _GoToDashboard() when goToDashboard != null:
return goToDashboard(_that);case _RouteConsumed() when routeConsumed != null:
return routeConsumed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  exportToGallery,TResult Function()?  shareFile,TResult Function()?  copyFilePath,TResult Function()?  goToDashboard,TResult Function()?  routeConsumed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExportToGallery() when exportToGallery != null:
return exportToGallery();case _ShareFile() when shareFile != null:
return shareFile();case _CopyFilePath() when copyFilePath != null:
return copyFilePath();case _GoToDashboard() when goToDashboard != null:
return goToDashboard();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  exportToGallery,required TResult Function()  shareFile,required TResult Function()  copyFilePath,required TResult Function()  goToDashboard,required TResult Function()  routeConsumed,}) {final _that = this;
switch (_that) {
case _ExportToGallery():
return exportToGallery();case _ShareFile():
return shareFile();case _CopyFilePath():
return copyFilePath();case _GoToDashboard():
return goToDashboard();case _RouteConsumed():
return routeConsumed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  exportToGallery,TResult? Function()?  shareFile,TResult? Function()?  copyFilePath,TResult? Function()?  goToDashboard,TResult? Function()?  routeConsumed,}) {final _that = this;
switch (_that) {
case _ExportToGallery() when exportToGallery != null:
return exportToGallery();case _ShareFile() when shareFile != null:
return shareFile();case _CopyFilePath() when copyFilePath != null:
return copyFilePath();case _GoToDashboard() when goToDashboard != null:
return goToDashboard();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _:
  return null;

}
}

}

/// @nodoc


class _ExportToGallery implements EncryptionSuccessEvent {
  const _ExportToGallery();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExportToGallery);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent.exportToGallery()';
}


}




/// @nodoc


class _ShareFile implements EncryptionSuccessEvent {
  const _ShareFile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent.shareFile()';
}


}




/// @nodoc


class _CopyFilePath implements EncryptionSuccessEvent {
  const _CopyFilePath();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CopyFilePath);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent.copyFilePath()';
}


}




/// @nodoc


class _GoToDashboard implements EncryptionSuccessEvent {
  const _GoToDashboard();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoToDashboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent.goToDashboard()';
}


}




/// @nodoc


class _RouteConsumed implements EncryptionSuccessEvent {
  const _RouteConsumed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteConsumed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionSuccessEvent.routeConsumed()';
}


}




/// @nodoc
mixin _$EncryptionSuccessState {

 EncryptionResult get encryptionResult; ExportStatus get exportStatus; String? get exportErrorMessage; ShareStatus get shareStatus; bool get pathCopied; AppRoute get pendingRoute;
/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptionSuccessStateCopyWith<EncryptionSuccessState> get copyWith => _$EncryptionSuccessStateCopyWithImpl<EncryptionSuccessState>(this as EncryptionSuccessState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionSuccessState&&(identical(other.encryptionResult, encryptionResult) || other.encryptionResult == encryptionResult)&&(identical(other.exportStatus, exportStatus) || other.exportStatus == exportStatus)&&(identical(other.exportErrorMessage, exportErrorMessage) || other.exportErrorMessage == exportErrorMessage)&&(identical(other.shareStatus, shareStatus) || other.shareStatus == shareStatus)&&(identical(other.pathCopied, pathCopied) || other.pathCopied == pathCopied)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,encryptionResult,exportStatus,exportErrorMessage,shareStatus,pathCopied,pendingRoute);

@override
String toString() {
  return 'EncryptionSuccessState(encryptionResult: $encryptionResult, exportStatus: $exportStatus, exportErrorMessage: $exportErrorMessage, shareStatus: $shareStatus, pathCopied: $pathCopied, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class $EncryptionSuccessStateCopyWith<$Res>  {
  factory $EncryptionSuccessStateCopyWith(EncryptionSuccessState value, $Res Function(EncryptionSuccessState) _then) = _$EncryptionSuccessStateCopyWithImpl;
@useResult
$Res call({
 EncryptionResult encryptionResult, ExportStatus exportStatus, String? exportErrorMessage, ShareStatus shareStatus, bool pathCopied, AppRoute pendingRoute
});


$EncryptionResultCopyWith<$Res> get encryptionResult;

}
/// @nodoc
class _$EncryptionSuccessStateCopyWithImpl<$Res>
    implements $EncryptionSuccessStateCopyWith<$Res> {
  _$EncryptionSuccessStateCopyWithImpl(this._self, this._then);

  final EncryptionSuccessState _self;
  final $Res Function(EncryptionSuccessState) _then;

/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptionResult = null,Object? exportStatus = null,Object? exportErrorMessage = freezed,Object? shareStatus = null,Object? pathCopied = null,Object? pendingRoute = null,}) {
  return _then(_self.copyWith(
encryptionResult: null == encryptionResult ? _self.encryptionResult : encryptionResult // ignore: cast_nullable_to_non_nullable
as EncryptionResult,exportStatus: null == exportStatus ? _self.exportStatus : exportStatus // ignore: cast_nullable_to_non_nullable
as ExportStatus,exportErrorMessage: freezed == exportErrorMessage ? _self.exportErrorMessage : exportErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,shareStatus: null == shareStatus ? _self.shareStatus : shareStatus // ignore: cast_nullable_to_non_nullable
as ShareStatus,pathCopied: null == pathCopied ? _self.pathCopied : pathCopied // ignore: cast_nullable_to_non_nullable
as bool,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}
/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionResultCopyWith<$Res> get encryptionResult {
  
  return $EncryptionResultCopyWith<$Res>(_self.encryptionResult, (value) {
    return _then(_self.copyWith(encryptionResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [EncryptionSuccessState].
extension EncryptionSuccessStatePatterns on EncryptionSuccessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptionSuccessState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptionSuccessState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptionSuccessState value)  $default,){
final _that = this;
switch (_that) {
case _EncryptionSuccessState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptionSuccessState value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptionSuccessState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EncryptionResult encryptionResult,  ExportStatus exportStatus,  String? exportErrorMessage,  ShareStatus shareStatus,  bool pathCopied,  AppRoute pendingRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptionSuccessState() when $default != null:
return $default(_that.encryptionResult,_that.exportStatus,_that.exportErrorMessage,_that.shareStatus,_that.pathCopied,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EncryptionResult encryptionResult,  ExportStatus exportStatus,  String? exportErrorMessage,  ShareStatus shareStatus,  bool pathCopied,  AppRoute pendingRoute)  $default,) {final _that = this;
switch (_that) {
case _EncryptionSuccessState():
return $default(_that.encryptionResult,_that.exportStatus,_that.exportErrorMessage,_that.shareStatus,_that.pathCopied,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EncryptionResult encryptionResult,  ExportStatus exportStatus,  String? exportErrorMessage,  ShareStatus shareStatus,  bool pathCopied,  AppRoute pendingRoute)?  $default,) {final _that = this;
switch (_that) {
case _EncryptionSuccessState() when $default != null:
return $default(_that.encryptionResult,_that.exportStatus,_that.exportErrorMessage,_that.shareStatus,_that.pathCopied,_that.pendingRoute);case _:
  return null;

}
}

}

/// @nodoc


class _EncryptionSuccessState extends EncryptionSuccessState {
  const _EncryptionSuccessState({required this.encryptionResult, this.exportStatus = ExportStatus.idle, this.exportErrorMessage, this.shareStatus = ShareStatus.idle, this.pathCopied = false, this.pendingRoute = const NoRoute()}): super._();
  

@override final  EncryptionResult encryptionResult;
@override@JsonKey() final  ExportStatus exportStatus;
@override final  String? exportErrorMessage;
@override@JsonKey() final  ShareStatus shareStatus;
@override@JsonKey() final  bool pathCopied;
@override@JsonKey() final  AppRoute pendingRoute;

/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptionSuccessStateCopyWith<_EncryptionSuccessState> get copyWith => __$EncryptionSuccessStateCopyWithImpl<_EncryptionSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptionSuccessState&&(identical(other.encryptionResult, encryptionResult) || other.encryptionResult == encryptionResult)&&(identical(other.exportStatus, exportStatus) || other.exportStatus == exportStatus)&&(identical(other.exportErrorMessage, exportErrorMessage) || other.exportErrorMessage == exportErrorMessage)&&(identical(other.shareStatus, shareStatus) || other.shareStatus == shareStatus)&&(identical(other.pathCopied, pathCopied) || other.pathCopied == pathCopied)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,encryptionResult,exportStatus,exportErrorMessage,shareStatus,pathCopied,pendingRoute);

@override
String toString() {
  return 'EncryptionSuccessState(encryptionResult: $encryptionResult, exportStatus: $exportStatus, exportErrorMessage: $exportErrorMessage, shareStatus: $shareStatus, pathCopied: $pathCopied, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class _$EncryptionSuccessStateCopyWith<$Res> implements $EncryptionSuccessStateCopyWith<$Res> {
  factory _$EncryptionSuccessStateCopyWith(_EncryptionSuccessState value, $Res Function(_EncryptionSuccessState) _then) = __$EncryptionSuccessStateCopyWithImpl;
@override @useResult
$Res call({
 EncryptionResult encryptionResult, ExportStatus exportStatus, String? exportErrorMessage, ShareStatus shareStatus, bool pathCopied, AppRoute pendingRoute
});


@override $EncryptionResultCopyWith<$Res> get encryptionResult;

}
/// @nodoc
class __$EncryptionSuccessStateCopyWithImpl<$Res>
    implements _$EncryptionSuccessStateCopyWith<$Res> {
  __$EncryptionSuccessStateCopyWithImpl(this._self, this._then);

  final _EncryptionSuccessState _self;
  final $Res Function(_EncryptionSuccessState) _then;

/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptionResult = null,Object? exportStatus = null,Object? exportErrorMessage = freezed,Object? shareStatus = null,Object? pathCopied = null,Object? pendingRoute = null,}) {
  return _then(_EncryptionSuccessState(
encryptionResult: null == encryptionResult ? _self.encryptionResult : encryptionResult // ignore: cast_nullable_to_non_nullable
as EncryptionResult,exportStatus: null == exportStatus ? _self.exportStatus : exportStatus // ignore: cast_nullable_to_non_nullable
as ExportStatus,exportErrorMessage: freezed == exportErrorMessage ? _self.exportErrorMessage : exportErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,shareStatus: null == shareStatus ? _self.shareStatus : shareStatus // ignore: cast_nullable_to_non_nullable
as ShareStatus,pathCopied: null == pathCopied ? _self.pathCopied : pathCopied // ignore: cast_nullable_to_non_nullable
as bool,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}

/// Create a copy of EncryptionSuccessState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionResultCopyWith<$Res> get encryptionResult {
  
  return $EncryptionResultCopyWith<$Res>(_self.encryptionResult, (value) {
    return _then(_self.copyWith(encryptionResult: value));
  });
}
}

// dart format on
