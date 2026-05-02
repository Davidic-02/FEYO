// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decryption_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecryptionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent()';
}


}

/// @nodoc
class $DecryptionEventCopyWith<$Res>  {
$DecryptionEventCopyWith(DecryptionEvent _, $Res Function(DecryptionEvent) __);
}


/// Adds pattern-matching-related methods to [DecryptionEvent].
extension DecryptionEventPatterns on DecryptionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PickEncryptedFile value)?  pickEncryptedFile,TResult Function( _FileSelected value)?  fileSelected,TResult Function( _UpdatePassphrase value)?  updatePassphrase,TResult Function( _TogglePassphraseVisibility value)?  togglePassphraseVisibility,TResult Function( _DecryptAndReveal value)?  decryptAndReveal,TResult Function( _RetryDecryption value)?  retryDecryption,TResult Function( _ResetForm value)?  resetForm,TResult Function( _RouteConsumed value)?  routeConsumed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickEncryptedFile() when pickEncryptedFile != null:
return pickEncryptedFile(_that);case _FileSelected() when fileSelected != null:
return fileSelected(_that);case _UpdatePassphrase() when updatePassphrase != null:
return updatePassphrase(_that);case _TogglePassphraseVisibility() when togglePassphraseVisibility != null:
return togglePassphraseVisibility(_that);case _DecryptAndReveal() when decryptAndReveal != null:
return decryptAndReveal(_that);case _RetryDecryption() when retryDecryption != null:
return retryDecryption(_that);case _ResetForm() when resetForm != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PickEncryptedFile value)  pickEncryptedFile,required TResult Function( _FileSelected value)  fileSelected,required TResult Function( _UpdatePassphrase value)  updatePassphrase,required TResult Function( _TogglePassphraseVisibility value)  togglePassphraseVisibility,required TResult Function( _DecryptAndReveal value)  decryptAndReveal,required TResult Function( _RetryDecryption value)  retryDecryption,required TResult Function( _ResetForm value)  resetForm,required TResult Function( _RouteConsumed value)  routeConsumed,}){
final _that = this;
switch (_that) {
case _PickEncryptedFile():
return pickEncryptedFile(_that);case _FileSelected():
return fileSelected(_that);case _UpdatePassphrase():
return updatePassphrase(_that);case _TogglePassphraseVisibility():
return togglePassphraseVisibility(_that);case _DecryptAndReveal():
return decryptAndReveal(_that);case _RetryDecryption():
return retryDecryption(_that);case _ResetForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PickEncryptedFile value)?  pickEncryptedFile,TResult? Function( _FileSelected value)?  fileSelected,TResult? Function( _UpdatePassphrase value)?  updatePassphrase,TResult? Function( _TogglePassphraseVisibility value)?  togglePassphraseVisibility,TResult? Function( _DecryptAndReveal value)?  decryptAndReveal,TResult? Function( _RetryDecryption value)?  retryDecryption,TResult? Function( _ResetForm value)?  resetForm,TResult? Function( _RouteConsumed value)?  routeConsumed,}){
final _that = this;
switch (_that) {
case _PickEncryptedFile() when pickEncryptedFile != null:
return pickEncryptedFile(_that);case _FileSelected() when fileSelected != null:
return fileSelected(_that);case _UpdatePassphrase() when updatePassphrase != null:
return updatePassphrase(_that);case _TogglePassphraseVisibility() when togglePassphraseVisibility != null:
return togglePassphraseVisibility(_that);case _DecryptAndReveal() when decryptAndReveal != null:
return decryptAndReveal(_that);case _RetryDecryption() when retryDecryption != null:
return retryDecryption(_that);case _ResetForm() when resetForm != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  pickEncryptedFile,TResult Function( String filePath)?  fileSelected,TResult Function( String value)?  updatePassphrase,TResult Function()?  togglePassphraseVisibility,TResult Function()?  decryptAndReveal,TResult Function()?  retryDecryption,TResult Function()?  resetForm,TResult Function()?  routeConsumed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickEncryptedFile() when pickEncryptedFile != null:
return pickEncryptedFile();case _FileSelected() when fileSelected != null:
return fileSelected(_that.filePath);case _UpdatePassphrase() when updatePassphrase != null:
return updatePassphrase(_that.value);case _TogglePassphraseVisibility() when togglePassphraseVisibility != null:
return togglePassphraseVisibility();case _DecryptAndReveal() when decryptAndReveal != null:
return decryptAndReveal();case _RetryDecryption() when retryDecryption != null:
return retryDecryption();case _ResetForm() when resetForm != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  pickEncryptedFile,required TResult Function( String filePath)  fileSelected,required TResult Function( String value)  updatePassphrase,required TResult Function()  togglePassphraseVisibility,required TResult Function()  decryptAndReveal,required TResult Function()  retryDecryption,required TResult Function()  resetForm,required TResult Function()  routeConsumed,}) {final _that = this;
switch (_that) {
case _PickEncryptedFile():
return pickEncryptedFile();case _FileSelected():
return fileSelected(_that.filePath);case _UpdatePassphrase():
return updatePassphrase(_that.value);case _TogglePassphraseVisibility():
return togglePassphraseVisibility();case _DecryptAndReveal():
return decryptAndReveal();case _RetryDecryption():
return retryDecryption();case _ResetForm():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  pickEncryptedFile,TResult? Function( String filePath)?  fileSelected,TResult? Function( String value)?  updatePassphrase,TResult? Function()?  togglePassphraseVisibility,TResult? Function()?  decryptAndReveal,TResult? Function()?  retryDecryption,TResult? Function()?  resetForm,TResult? Function()?  routeConsumed,}) {final _that = this;
switch (_that) {
case _PickEncryptedFile() when pickEncryptedFile != null:
return pickEncryptedFile();case _FileSelected() when fileSelected != null:
return fileSelected(_that.filePath);case _UpdatePassphrase() when updatePassphrase != null:
return updatePassphrase(_that.value);case _TogglePassphraseVisibility() when togglePassphraseVisibility != null:
return togglePassphraseVisibility();case _DecryptAndReveal() when decryptAndReveal != null:
return decryptAndReveal();case _RetryDecryption() when retryDecryption != null:
return retryDecryption();case _ResetForm() when resetForm != null:
return resetForm();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _:
  return null;

}
}

}

/// @nodoc


class _PickEncryptedFile implements DecryptionEvent {
  const _PickEncryptedFile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickEncryptedFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.pickEncryptedFile()';
}


}




/// @nodoc


class _FileSelected implements DecryptionEvent {
  const _FileSelected(this.filePath);
  

 final  String filePath;

/// Create a copy of DecryptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileSelectedCopyWith<_FileSelected> get copyWith => __$FileSelectedCopyWithImpl<_FileSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileSelected&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode => Object.hash(runtimeType,filePath);

@override
String toString() {
  return 'DecryptionEvent.fileSelected(filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$FileSelectedCopyWith<$Res> implements $DecryptionEventCopyWith<$Res> {
  factory _$FileSelectedCopyWith(_FileSelected value, $Res Function(_FileSelected) _then) = __$FileSelectedCopyWithImpl;
@useResult
$Res call({
 String filePath
});




}
/// @nodoc
class __$FileSelectedCopyWithImpl<$Res>
    implements _$FileSelectedCopyWith<$Res> {
  __$FileSelectedCopyWithImpl(this._self, this._then);

  final _FileSelected _self;
  final $Res Function(_FileSelected) _then;

/// Create a copy of DecryptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filePath = null,}) {
  return _then(_FileSelected(
null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _UpdatePassphrase implements DecryptionEvent {
  const _UpdatePassphrase(this.value);
  

 final  String value;

/// Create a copy of DecryptionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePassphraseCopyWith<_UpdatePassphrase> get copyWith => __$UpdatePassphraseCopyWithImpl<_UpdatePassphrase>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePassphrase&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DecryptionEvent.updatePassphrase(value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdatePassphraseCopyWith<$Res> implements $DecryptionEventCopyWith<$Res> {
  factory _$UpdatePassphraseCopyWith(_UpdatePassphrase value, $Res Function(_UpdatePassphrase) _then) = __$UpdatePassphraseCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class __$UpdatePassphraseCopyWithImpl<$Res>
    implements _$UpdatePassphraseCopyWith<$Res> {
  __$UpdatePassphraseCopyWithImpl(this._self, this._then);

  final _UpdatePassphrase _self;
  final $Res Function(_UpdatePassphrase) _then;

/// Create a copy of DecryptionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_UpdatePassphrase(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TogglePassphraseVisibility implements DecryptionEvent {
  const _TogglePassphraseVisibility();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TogglePassphraseVisibility);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.togglePassphraseVisibility()';
}


}




/// @nodoc


class _DecryptAndReveal implements DecryptionEvent {
  const _DecryptAndReveal();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptAndReveal);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.decryptAndReveal()';
}


}




/// @nodoc


class _RetryDecryption implements DecryptionEvent {
  const _RetryDecryption();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryDecryption);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.retryDecryption()';
}


}




/// @nodoc


class _ResetForm implements DecryptionEvent {
  const _ResetForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.resetForm()';
}


}




/// @nodoc


class _RouteConsumed implements DecryptionEvent {
  const _RouteConsumed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteConsumed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DecryptionEvent.routeConsumed()';
}


}




/// @nodoc
mixin _$DecryptionState {

 DecryptionPageStatus get status; String? get selectedFilePath; String? get selectedFileName; PassphraseFormz get passphrase; bool get isPassphraseVisible; double get decryptionProgress; String? get errorMessage; String? get decryptedFilePath; AppRoute get pendingRoute;
/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptionStateCopyWith<DecryptionState> get copyWith => _$DecryptionStateCopyWithImpl<DecryptionState>(this as DecryptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptionState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedFilePath, selectedFilePath) || other.selectedFilePath == selectedFilePath)&&(identical(other.selectedFileName, selectedFileName) || other.selectedFileName == selectedFileName)&&(identical(other.passphrase, passphrase) || other.passphrase == passphrase)&&(identical(other.isPassphraseVisible, isPassphraseVisible) || other.isPassphraseVisible == isPassphraseVisible)&&(identical(other.decryptionProgress, decryptionProgress) || other.decryptionProgress == decryptionProgress)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.decryptedFilePath, decryptedFilePath) || other.decryptedFilePath == decryptedFilePath)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedFilePath,selectedFileName,passphrase,isPassphraseVisible,decryptionProgress,errorMessage,decryptedFilePath,pendingRoute);

@override
String toString() {
  return 'DecryptionState(status: $status, selectedFilePath: $selectedFilePath, selectedFileName: $selectedFileName, passphrase: $passphrase, isPassphraseVisible: $isPassphraseVisible, decryptionProgress: $decryptionProgress, errorMessage: $errorMessage, decryptedFilePath: $decryptedFilePath, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class $DecryptionStateCopyWith<$Res>  {
  factory $DecryptionStateCopyWith(DecryptionState value, $Res Function(DecryptionState) _then) = _$DecryptionStateCopyWithImpl;
@useResult
$Res call({
 DecryptionPageStatus status, String? selectedFilePath, String? selectedFileName, PassphraseFormz passphrase, bool isPassphraseVisible, double decryptionProgress, String? errorMessage, String? decryptedFilePath, AppRoute pendingRoute
});




}
/// @nodoc
class _$DecryptionStateCopyWithImpl<$Res>
    implements $DecryptionStateCopyWith<$Res> {
  _$DecryptionStateCopyWithImpl(this._self, this._then);

  final DecryptionState _self;
  final $Res Function(DecryptionState) _then;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? selectedFilePath = freezed,Object? selectedFileName = freezed,Object? passphrase = null,Object? isPassphraseVisible = null,Object? decryptionProgress = null,Object? errorMessage = freezed,Object? decryptedFilePath = freezed,Object? pendingRoute = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DecryptionPageStatus,selectedFilePath: freezed == selectedFilePath ? _self.selectedFilePath : selectedFilePath // ignore: cast_nullable_to_non_nullable
as String?,selectedFileName: freezed == selectedFileName ? _self.selectedFileName : selectedFileName // ignore: cast_nullable_to_non_nullable
as String?,passphrase: null == passphrase ? _self.passphrase : passphrase // ignore: cast_nullable_to_non_nullable
as PassphraseFormz,isPassphraseVisible: null == isPassphraseVisible ? _self.isPassphraseVisible : isPassphraseVisible // ignore: cast_nullable_to_non_nullable
as bool,decryptionProgress: null == decryptionProgress ? _self.decryptionProgress : decryptionProgress // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,decryptedFilePath: freezed == decryptedFilePath ? _self.decryptedFilePath : decryptedFilePath // ignore: cast_nullable_to_non_nullable
as String?,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}

}


/// Adds pattern-matching-related methods to [DecryptionState].
extension DecryptionStatePatterns on DecryptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecryptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecryptionState value)  $default,){
final _that = this;
switch (_that) {
case _DecryptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecryptionState value)?  $default,){
final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DecryptionPageStatus status,  String? selectedFilePath,  String? selectedFileName,  PassphraseFormz passphrase,  bool isPassphraseVisible,  double decryptionProgress,  String? errorMessage,  String? decryptedFilePath,  AppRoute pendingRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
return $default(_that.status,_that.selectedFilePath,_that.selectedFileName,_that.passphrase,_that.isPassphraseVisible,_that.decryptionProgress,_that.errorMessage,_that.decryptedFilePath,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DecryptionPageStatus status,  String? selectedFilePath,  String? selectedFileName,  PassphraseFormz passphrase,  bool isPassphraseVisible,  double decryptionProgress,  String? errorMessage,  String? decryptedFilePath,  AppRoute pendingRoute)  $default,) {final _that = this;
switch (_that) {
case _DecryptionState():
return $default(_that.status,_that.selectedFilePath,_that.selectedFileName,_that.passphrase,_that.isPassphraseVisible,_that.decryptionProgress,_that.errorMessage,_that.decryptedFilePath,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DecryptionPageStatus status,  String? selectedFilePath,  String? selectedFileName,  PassphraseFormz passphrase,  bool isPassphraseVisible,  double decryptionProgress,  String? errorMessage,  String? decryptedFilePath,  AppRoute pendingRoute)?  $default,) {final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
return $default(_that.status,_that.selectedFilePath,_that.selectedFileName,_that.passphrase,_that.isPassphraseVisible,_that.decryptionProgress,_that.errorMessage,_that.decryptedFilePath,_that.pendingRoute);case _:
  return null;

}
}

}

/// @nodoc


class _DecryptionState extends DecryptionState {
  const _DecryptionState({this.status = DecryptionPageStatus.initial, this.selectedFilePath, this.selectedFileName, this.passphrase = const PassphraseFormz.pure(), this.isPassphraseVisible = false, this.decryptionProgress = 0.0, this.errorMessage, this.decryptedFilePath, this.pendingRoute = const NoRoute()}): super._();
  

@override@JsonKey() final  DecryptionPageStatus status;
@override final  String? selectedFilePath;
@override final  String? selectedFileName;
@override@JsonKey() final  PassphraseFormz passphrase;
@override@JsonKey() final  bool isPassphraseVisible;
@override@JsonKey() final  double decryptionProgress;
@override final  String? errorMessage;
@override final  String? decryptedFilePath;
@override@JsonKey() final  AppRoute pendingRoute;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptionStateCopyWith<_DecryptionState> get copyWith => __$DecryptionStateCopyWithImpl<_DecryptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptionState&&(identical(other.status, status) || other.status == status)&&(identical(other.selectedFilePath, selectedFilePath) || other.selectedFilePath == selectedFilePath)&&(identical(other.selectedFileName, selectedFileName) || other.selectedFileName == selectedFileName)&&(identical(other.passphrase, passphrase) || other.passphrase == passphrase)&&(identical(other.isPassphraseVisible, isPassphraseVisible) || other.isPassphraseVisible == isPassphraseVisible)&&(identical(other.decryptionProgress, decryptionProgress) || other.decryptionProgress == decryptionProgress)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.decryptedFilePath, decryptedFilePath) || other.decryptedFilePath == decryptedFilePath)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,status,selectedFilePath,selectedFileName,passphrase,isPassphraseVisible,decryptionProgress,errorMessage,decryptedFilePath,pendingRoute);

@override
String toString() {
  return 'DecryptionState(status: $status, selectedFilePath: $selectedFilePath, selectedFileName: $selectedFileName, passphrase: $passphrase, isPassphraseVisible: $isPassphraseVisible, decryptionProgress: $decryptionProgress, errorMessage: $errorMessage, decryptedFilePath: $decryptedFilePath, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class _$DecryptionStateCopyWith<$Res> implements $DecryptionStateCopyWith<$Res> {
  factory _$DecryptionStateCopyWith(_DecryptionState value, $Res Function(_DecryptionState) _then) = __$DecryptionStateCopyWithImpl;
@override @useResult
$Res call({
 DecryptionPageStatus status, String? selectedFilePath, String? selectedFileName, PassphraseFormz passphrase, bool isPassphraseVisible, double decryptionProgress, String? errorMessage, String? decryptedFilePath, AppRoute pendingRoute
});




}
/// @nodoc
class __$DecryptionStateCopyWithImpl<$Res>
    implements _$DecryptionStateCopyWith<$Res> {
  __$DecryptionStateCopyWithImpl(this._self, this._then);

  final _DecryptionState _self;
  final $Res Function(_DecryptionState) _then;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? selectedFilePath = freezed,Object? selectedFileName = freezed,Object? passphrase = null,Object? isPassphraseVisible = null,Object? decryptionProgress = null,Object? errorMessage = freezed,Object? decryptedFilePath = freezed,Object? pendingRoute = null,}) {
  return _then(_DecryptionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DecryptionPageStatus,selectedFilePath: freezed == selectedFilePath ? _self.selectedFilePath : selectedFilePath // ignore: cast_nullable_to_non_nullable
as String?,selectedFileName: freezed == selectedFileName ? _self.selectedFileName : selectedFileName // ignore: cast_nullable_to_non_nullable
as String?,passphrase: null == passphrase ? _self.passphrase : passphrase // ignore: cast_nullable_to_non_nullable
as PassphraseFormz,isPassphraseVisible: null == isPassphraseVisible ? _self.isPassphraseVisible : isPassphraseVisible // ignore: cast_nullable_to_non_nullable
as bool,decryptionProgress: null == decryptionProgress ? _self.decryptionProgress : decryptionProgress // ignore: cast_nullable_to_non_nullable
as double,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,decryptedFilePath: freezed == decryptedFilePath ? _self.decryptedFilePath : decryptedFilePath // ignore: cast_nullable_to_non_nullable
as String?,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}


}

// dart format on
