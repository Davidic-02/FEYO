// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encryption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EncryptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent()';
}


}

/// @nodoc
class $EncryptionEventCopyWith<$Res>  {
$EncryptionEventCopyWith(EncryptionEvent _, $Res Function(EncryptionEvent) __);
}


/// Adds pattern-matching-related methods to [EncryptionEvent].
extension EncryptionEventPatterns on EncryptionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateIntensity value)?  updateIntensity,TResult Function( _TogglePasswordVisibility value)?  togglePasswordVisibility,TResult Function( _UpdatePassword value)?  updatePassword,TResult Function( _StartEncryption value)?  startEncryption,TResult Function( _RetryEncryption value)?  retryEncryption,TResult Function( _EncryptionCancelled value)?  encryptionCancelled,TResult Function( _ResetForm value)?  resetForm,TResult Function( _RouteConsumed value)?  routeConsumed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateIntensity() when updateIntensity != null:
return updateIntensity(_that);case _TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that);case _StartEncryption() when startEncryption != null:
return startEncryption(_that);case _RetryEncryption() when retryEncryption != null:
return retryEncryption(_that);case _EncryptionCancelled() when encryptionCancelled != null:
return encryptionCancelled(_that);case _ResetForm() when resetForm != null:
return resetForm(_that);case _RouteConsumed() when routeConsumed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateIntensity value)  updateIntensity,required TResult Function( _TogglePasswordVisibility value)  togglePasswordVisibility,required TResult Function( _UpdatePassword value)  updatePassword,required TResult Function( _StartEncryption value)  startEncryption,required TResult Function( _RetryEncryption value)  retryEncryption,required TResult Function( _EncryptionCancelled value)  encryptionCancelled,required TResult Function( _ResetForm value)  resetForm,required TResult Function( _RouteConsumed value)  routeConsumed,}){
final _that = this;
switch (_that) {
case _UpdateIntensity():
return updateIntensity(_that);case _TogglePasswordVisibility():
return togglePasswordVisibility(_that);case _UpdatePassword():
return updatePassword(_that);case _StartEncryption():
return startEncryption(_that);case _RetryEncryption():
return retryEncryption(_that);case _EncryptionCancelled():
return encryptionCancelled(_that);case _ResetForm():
return resetForm(_that);case _RouteConsumed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateIntensity value)?  updateIntensity,TResult? Function( _TogglePasswordVisibility value)?  togglePasswordVisibility,TResult? Function( _UpdatePassword value)?  updatePassword,TResult? Function( _StartEncryption value)?  startEncryption,TResult? Function( _RetryEncryption value)?  retryEncryption,TResult? Function( _EncryptionCancelled value)?  encryptionCancelled,TResult? Function( _ResetForm value)?  resetForm,TResult? Function( _RouteConsumed value)?  routeConsumed,}){
final _that = this;
switch (_that) {
case _UpdateIntensity() when updateIntensity != null:
return updateIntensity(_that);case _TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility(_that);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that);case _StartEncryption() when startEncryption != null:
return startEncryption(_that);case _RetryEncryption() when retryEncryption != null:
return retryEncryption(_that);case _EncryptionCancelled() when encryptionCancelled != null:
return encryptionCancelled(_that);case _ResetForm() when resetForm != null:
return resetForm(_that);case _RouteConsumed() when routeConsumed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double value)?  updateIntensity,TResult Function()?  togglePasswordVisibility,TResult Function( String password)?  updatePassword,TResult Function()?  startEncryption,TResult Function()?  retryEncryption,TResult Function()?  encryptionCancelled,TResult Function()?  resetForm,TResult Function()?  routeConsumed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateIntensity() when updateIntensity != null:
return updateIntensity(_that.value);case _TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case _UpdatePassword() when updatePassword != null:
return updatePassword(_that.password);case _StartEncryption() when startEncryption != null:
return startEncryption();case _RetryEncryption() when retryEncryption != null:
return retryEncryption();case _EncryptionCancelled() when encryptionCancelled != null:
return encryptionCancelled();case _ResetForm() when resetForm != null:
return resetForm();case _RouteConsumed() when routeConsumed != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double value)  updateIntensity,required TResult Function()  togglePasswordVisibility,required TResult Function( String password)  updatePassword,required TResult Function()  startEncryption,required TResult Function()  retryEncryption,required TResult Function()  encryptionCancelled,required TResult Function()  resetForm,required TResult Function()  routeConsumed,}) {final _that = this;
switch (_that) {
case _UpdateIntensity():
return updateIntensity(_that.value);case _TogglePasswordVisibility():
return togglePasswordVisibility();case _UpdatePassword():
return updatePassword(_that.password);case _StartEncryption():
return startEncryption();case _RetryEncryption():
return retryEncryption();case _EncryptionCancelled():
return encryptionCancelled();case _ResetForm():
return resetForm();case _RouteConsumed():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double value)?  updateIntensity,TResult? Function()?  togglePasswordVisibility,TResult? Function( String password)?  updatePassword,TResult? Function()?  startEncryption,TResult? Function()?  retryEncryption,TResult? Function()?  encryptionCancelled,TResult? Function()?  resetForm,TResult? Function()?  routeConsumed,}) {final _that = this;
switch (_that) {
case _UpdateIntensity() when updateIntensity != null:
return updateIntensity(_that.value);case _TogglePasswordVisibility() when togglePasswordVisibility != null:
return togglePasswordVisibility();case _UpdatePassword() when updatePassword != null:
return updatePassword(_that.password);case _StartEncryption() when startEncryption != null:
return startEncryption();case _RetryEncryption() when retryEncryption != null:
return retryEncryption();case _EncryptionCancelled() when encryptionCancelled != null:
return encryptionCancelled();case _ResetForm() when resetForm != null:
return resetForm();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _:
  return null;

}
}

}

/// @nodoc


class _UpdateIntensity implements EncryptionEvent {
  const _UpdateIntensity(this.value);
  

 final  double value;

/// Create a copy of EncryptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateIntensityCopyWith<_UpdateIntensity> get copyWith => __$UpdateIntensityCopyWithImpl<_UpdateIntensity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateIntensity&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'EncryptionEvent.updateIntensity(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateIntensityCopyWith<$Res> implements $EncryptionEventCopyWith<$Res> {
  factory _$UpdateIntensityCopyWith(_UpdateIntensity value, $Res Function(_UpdateIntensity) _then) = __$UpdateIntensityCopyWithImpl;
@useResult
$Res call({
 double value
});




}
/// @nodoc
class __$UpdateIntensityCopyWithImpl<$Res>
    implements _$UpdateIntensityCopyWith<$Res> {
  __$UpdateIntensityCopyWithImpl(this._self, this._then);

  final _UpdateIntensity _self;
  final $Res Function(_UpdateIntensity) _then;

/// Create a copy of EncryptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdateIntensity(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class _TogglePasswordVisibility implements EncryptionEvent {
  const _TogglePasswordVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TogglePasswordVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.togglePasswordVisibility()';
}


}




/// @nodoc


class _UpdatePassword implements EncryptionEvent {
  const _UpdatePassword(this.password);
  

 final  String password;

/// Create a copy of EncryptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordCopyWith<_UpdatePassword> get copyWith => __$UpdatePasswordCopyWithImpl<_UpdatePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePassword&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'EncryptionEvent.updatePassword(password: $password)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordCopyWith<$Res> implements $EncryptionEventCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(_UpdatePassword value, $Res Function(_UpdatePassword) _then) = __$UpdatePasswordCopyWithImpl;
@useResult
$Res call({
 String password
});




}
/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(this._self, this._then);

  final _UpdatePassword _self;
  final $Res Function(_UpdatePassword) _then;

/// Create a copy of EncryptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? password = null,}) {
  return _then(_UpdatePassword(
null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StartEncryption implements EncryptionEvent {
  const _StartEncryption();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartEncryption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.startEncryption()';
}


}




/// @nodoc


class _RetryEncryption implements EncryptionEvent {
  const _RetryEncryption();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryEncryption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.retryEncryption()';
}


}




/// @nodoc


class _EncryptionCancelled implements EncryptionEvent {
  const _EncryptionCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptionCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.encryptionCancelled()';
}


}




/// @nodoc


class _ResetForm implements EncryptionEvent {
  const _ResetForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.resetForm()';
}


}




/// @nodoc


class _RouteConsumed implements EncryptionEvent {
  const _RouteConsumed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteConsumed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EncryptionEvent.routeConsumed()';
}


}




/// @nodoc
mixin _$EncryptionState {

// ── Screen lifecycle ──────────────────────────────────
 PageStatus get status; double get intensity; PasswordFormz get password; bool get isPasswordVisible; double get encryptionProgress; String? get errorMessage; EncryptionResult? get encryptionResult;
/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptionStateCopyWith<EncryptionState> get copyWith => _$EncryptionStateCopyWithImpl<EncryptionState>(this as EncryptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionState&&(identical(other.status, status) || other.status == status)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&(identical(other.password, password) || other.password == password)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.encryptionProgress, encryptionProgress) || other.encryptionProgress == encryptionProgress)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.encryptionResult, encryptionResult) || other.encryptionResult == encryptionResult));
}


@override
int get hashCode => Object.hash(runtimeType,status,intensity,password,isPasswordVisible,encryptionProgress,errorMessage,encryptionResult);

@override
String toString() {
  return 'EncryptionState(status: $status, intensity: $intensity, password: $password, isPasswordVisible: $isPasswordVisible, encryptionProgress: $encryptionProgress, errorMessage: $errorMessage, encryptionResult: $encryptionResult)';
}


}

/// @nodoc
abstract mixin class $EncryptionStateCopyWith<$Res>  {
  factory $EncryptionStateCopyWith(EncryptionState value, $Res Function(EncryptionState) _then) = _$EncryptionStateCopyWithImpl;
@useResult
$Res call({
 PageStatus status, double intensity, PasswordFormz password, bool isPasswordVisible, double encryptionProgress, String? errorMessage, EncryptionResult? encryptionResult
});


$EncryptionResultCopyWith<$Res>? get encryptionResult;

}
/// @nodoc
class _$EncryptionStateCopyWithImpl<$Res>
    implements $EncryptionStateCopyWith<$Res> {
  _$EncryptionStateCopyWithImpl(this._self, this._then);

  final EncryptionState _self;
  final $Res Function(EncryptionState) _then;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? intensity = null,Object? password = null,Object? isPasswordVisible = null,Object? encryptionProgress = null,Object? errorMessage = freezed,Object? encryptionResult = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageStatus,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as double,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormz,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,encryptionProgress: null == encryptionProgress ? _self.encryptionProgress : encryptionProgress // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,encryptionResult: freezed == encryptionResult ? _self.encryptionResult : encryptionResult // ignore: cast_nullable_to_non_nullable
as EncryptionResult?,
  ));
}
/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionResultCopyWith<$Res>? get encryptionResult {
    if (_self.encryptionResult == null) {
    return null;
  }

  return $EncryptionResultCopyWith<$Res>(_self.encryptionResult!, (value) {
    return _then(_self.copyWith(encryptionResult: value));
  });
}
}


/// Adds pattern-matching-related methods to [EncryptionState].
extension EncryptionStatePatterns on EncryptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptionState value)  $default,){
final _that = this;
switch (_that) {
case _EncryptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptionState value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PageStatus status,  double intensity,  PasswordFormz password,  bool isPasswordVisible,  double encryptionProgress,  String? errorMessage,  EncryptionResult? encryptionResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
return $default(_that.status,_that.intensity,_that.password,_that.isPasswordVisible,_that.encryptionProgress,_that.errorMessage,_that.encryptionResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PageStatus status,  double intensity,  PasswordFormz password,  bool isPasswordVisible,  double encryptionProgress,  String? errorMessage,  EncryptionResult? encryptionResult)  $default,) {final _that = this;
switch (_that) {
case _EncryptionState():
return $default(_that.status,_that.intensity,_that.password,_that.isPasswordVisible,_that.encryptionProgress,_that.errorMessage,_that.encryptionResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PageStatus status,  double intensity,  PasswordFormz password,  bool isPasswordVisible,  double encryptionProgress,  String? errorMessage,  EncryptionResult? encryptionResult)?  $default,) {final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
return $default(_that.status,_that.intensity,_that.password,_that.isPasswordVisible,_that.encryptionProgress,_that.errorMessage,_that.encryptionResult);case _:
  return null;

}
}

}

/// @nodoc


class _EncryptionState extends EncryptionState {
  const _EncryptionState({this.status = PageStatus.initial, this.intensity = 0.5, this.password = const PasswordFormz.pure(), this.isPasswordVisible = false, this.encryptionProgress = 0.0, this.errorMessage, this.encryptionResult}): super._();
  

// ── Screen lifecycle ──────────────────────────────────
@override@JsonKey() final  PageStatus status;
@override@JsonKey() final  double intensity;
@override@JsonKey() final  PasswordFormz password;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  double encryptionProgress;
@override final  String? errorMessage;
@override final  EncryptionResult? encryptionResult;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptionStateCopyWith<_EncryptionState> get copyWith => __$EncryptionStateCopyWithImpl<_EncryptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptionState&&(identical(other.status, status) || other.status == status)&&(identical(other.intensity, intensity) || other.intensity == intensity)&&(identical(other.password, password) || other.password == password)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.encryptionProgress, encryptionProgress) || other.encryptionProgress == encryptionProgress)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.encryptionResult, encryptionResult) || other.encryptionResult == encryptionResult));
}


@override
int get hashCode => Object.hash(runtimeType,status,intensity,password,isPasswordVisible,encryptionProgress,errorMessage,encryptionResult);

@override
String toString() {
  return 'EncryptionState(status: $status, intensity: $intensity, password: $password, isPasswordVisible: $isPasswordVisible, encryptionProgress: $encryptionProgress, errorMessage: $errorMessage, encryptionResult: $encryptionResult)';
}


}

/// @nodoc
abstract mixin class _$EncryptionStateCopyWith<$Res> implements $EncryptionStateCopyWith<$Res> {
  factory _$EncryptionStateCopyWith(_EncryptionState value, $Res Function(_EncryptionState) _then) = __$EncryptionStateCopyWithImpl;
@override @useResult
$Res call({
 PageStatus status, double intensity, PasswordFormz password, bool isPasswordVisible, double encryptionProgress, String? errorMessage, EncryptionResult? encryptionResult
});


@override $EncryptionResultCopyWith<$Res>? get encryptionResult;

}
/// @nodoc
class __$EncryptionStateCopyWithImpl<$Res>
    implements _$EncryptionStateCopyWith<$Res> {
  __$EncryptionStateCopyWithImpl(this._self, this._then);

  final _EncryptionState _self;
  final $Res Function(_EncryptionState) _then;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? intensity = null,Object? password = null,Object? isPasswordVisible = null,Object? encryptionProgress = null,Object? errorMessage = freezed,Object? encryptionResult = freezed,}) {
  return _then(_EncryptionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageStatus,intensity: null == intensity ? _self.intensity : intensity // ignore: cast_nullable_to_non_nullable
as double,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordFormz,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,encryptionProgress: null == encryptionProgress ? _self.encryptionProgress : encryptionProgress // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,encryptionResult: freezed == encryptionResult ? _self.encryptionResult : encryptionResult // ignore: cast_nullable_to_non_nullable
as EncryptionResult?,
  ));
}

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptionResultCopyWith<$Res>? get encryptionResult {
    if (_self.encryptionResult == null) {
    return null;
  }

  return $EncryptionResultCopyWith<$Res>(_self.encryptionResult!, (value) {
    return _then(_self.copyWith(encryptionResult: value));
  });
}
}

// dart format on
