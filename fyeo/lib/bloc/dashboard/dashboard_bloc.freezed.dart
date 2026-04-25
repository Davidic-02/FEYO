// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent()';
}


}

/// @nodoc
class $DashboardEventCopyWith<$Res>  {
$DashboardEventCopyWith(DashboardEvent _, $Res Function(DashboardEvent) __);
}


/// Adds pattern-matching-related methods to [DashboardEvent].
extension DashboardEventPatterns on DashboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchFiles value)?  fetchFiles,TResult Function( _Refresh value)?  refresh,TResult Function( _Retry value)?  retry,TResult Function( _PickFile value)?  pickFile,TResult Function( _FileSelected value)?  fileSelected,TResult Function( _OpenRecentFile value)?  openRecentFile,TResult Function( _DeleteFile value)?  deleteFile,TResult Function( _ShareFile value)?  shareFile,TResult Function( _ToggleCompression value)?  toggleCompression,TResult Function( _CheckSecurityStatus value)?  checkSecurityStatus,TResult Function( _RouteConsumed value)?  routeConsumed,TResult Function( _DismissError value)?  dismissError,TResult Function( _ClearFiles value)?  clearFiles,TResult Function( _ViewAllFiles value)?  viewAllFiles,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchFiles() when fetchFiles != null:
return fetchFiles(_that);case _Refresh() when refresh != null:
return refresh(_that);case _Retry() when retry != null:
return retry(_that);case _PickFile() when pickFile != null:
return pickFile(_that);case _FileSelected() when fileSelected != null:
return fileSelected(_that);case _OpenRecentFile() when openRecentFile != null:
return openRecentFile(_that);case _DeleteFile() when deleteFile != null:
return deleteFile(_that);case _ShareFile() when shareFile != null:
return shareFile(_that);case _ToggleCompression() when toggleCompression != null:
return toggleCompression(_that);case _CheckSecurityStatus() when checkSecurityStatus != null:
return checkSecurityStatus(_that);case _RouteConsumed() when routeConsumed != null:
return routeConsumed(_that);case _DismissError() when dismissError != null:
return dismissError(_that);case _ClearFiles() when clearFiles != null:
return clearFiles(_that);case _ViewAllFiles() when viewAllFiles != null:
return viewAllFiles(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchFiles value)  fetchFiles,required TResult Function( _Refresh value)  refresh,required TResult Function( _Retry value)  retry,required TResult Function( _PickFile value)  pickFile,required TResult Function( _FileSelected value)  fileSelected,required TResult Function( _OpenRecentFile value)  openRecentFile,required TResult Function( _DeleteFile value)  deleteFile,required TResult Function( _ShareFile value)  shareFile,required TResult Function( _ToggleCompression value)  toggleCompression,required TResult Function( _CheckSecurityStatus value)  checkSecurityStatus,required TResult Function( _RouteConsumed value)  routeConsumed,required TResult Function( _DismissError value)  dismissError,required TResult Function( _ClearFiles value)  clearFiles,required TResult Function( _ViewAllFiles value)  viewAllFiles,}){
final _that = this;
switch (_that) {
case _FetchFiles():
return fetchFiles(_that);case _Refresh():
return refresh(_that);case _Retry():
return retry(_that);case _PickFile():
return pickFile(_that);case _FileSelected():
return fileSelected(_that);case _OpenRecentFile():
return openRecentFile(_that);case _DeleteFile():
return deleteFile(_that);case _ShareFile():
return shareFile(_that);case _ToggleCompression():
return toggleCompression(_that);case _CheckSecurityStatus():
return checkSecurityStatus(_that);case _RouteConsumed():
return routeConsumed(_that);case _DismissError():
return dismissError(_that);case _ClearFiles():
return clearFiles(_that);case _ViewAllFiles():
return viewAllFiles(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchFiles value)?  fetchFiles,TResult? Function( _Refresh value)?  refresh,TResult? Function( _Retry value)?  retry,TResult? Function( _PickFile value)?  pickFile,TResult? Function( _FileSelected value)?  fileSelected,TResult? Function( _OpenRecentFile value)?  openRecentFile,TResult? Function( _DeleteFile value)?  deleteFile,TResult? Function( _ShareFile value)?  shareFile,TResult? Function( _ToggleCompression value)?  toggleCompression,TResult? Function( _CheckSecurityStatus value)?  checkSecurityStatus,TResult? Function( _RouteConsumed value)?  routeConsumed,TResult? Function( _DismissError value)?  dismissError,TResult? Function( _ClearFiles value)?  clearFiles,TResult? Function( _ViewAllFiles value)?  viewAllFiles,}){
final _that = this;
switch (_that) {
case _FetchFiles() when fetchFiles != null:
return fetchFiles(_that);case _Refresh() when refresh != null:
return refresh(_that);case _Retry() when retry != null:
return retry(_that);case _PickFile() when pickFile != null:
return pickFile(_that);case _FileSelected() when fileSelected != null:
return fileSelected(_that);case _OpenRecentFile() when openRecentFile != null:
return openRecentFile(_that);case _DeleteFile() when deleteFile != null:
return deleteFile(_that);case _ShareFile() when shareFile != null:
return shareFile(_that);case _ToggleCompression() when toggleCompression != null:
return toggleCompression(_that);case _CheckSecurityStatus() when checkSecurityStatus != null:
return checkSecurityStatus(_that);case _RouteConsumed() when routeConsumed != null:
return routeConsumed(_that);case _DismissError() when dismissError != null:
return dismissError(_that);case _ClearFiles() when clearFiles != null:
return clearFiles(_that);case _ViewAllFiles() when viewAllFiles != null:
return viewAllFiles(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchFiles,TResult Function()?  refresh,TResult Function()?  retry,TResult Function()?  pickFile,TResult Function( File file)?  fileSelected,TResult Function( EncryptedFile file)?  openRecentFile,TResult Function( String fileId)?  deleteFile,TResult Function( String fileId)?  shareFile,TResult Function( bool enabled)?  toggleCompression,TResult Function()?  checkSecurityStatus,TResult Function()?  routeConsumed,TResult Function()?  dismissError,TResult Function()?  clearFiles,TResult Function()?  viewAllFiles,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchFiles() when fetchFiles != null:
return fetchFiles();case _Refresh() when refresh != null:
return refresh();case _Retry() when retry != null:
return retry();case _PickFile() when pickFile != null:
return pickFile();case _FileSelected() when fileSelected != null:
return fileSelected(_that.file);case _OpenRecentFile() when openRecentFile != null:
return openRecentFile(_that.file);case _DeleteFile() when deleteFile != null:
return deleteFile(_that.fileId);case _ShareFile() when shareFile != null:
return shareFile(_that.fileId);case _ToggleCompression() when toggleCompression != null:
return toggleCompression(_that.enabled);case _CheckSecurityStatus() when checkSecurityStatus != null:
return checkSecurityStatus();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _DismissError() when dismissError != null:
return dismissError();case _ClearFiles() when clearFiles != null:
return clearFiles();case _ViewAllFiles() when viewAllFiles != null:
return viewAllFiles();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchFiles,required TResult Function()  refresh,required TResult Function()  retry,required TResult Function()  pickFile,required TResult Function( File file)  fileSelected,required TResult Function( EncryptedFile file)  openRecentFile,required TResult Function( String fileId)  deleteFile,required TResult Function( String fileId)  shareFile,required TResult Function( bool enabled)  toggleCompression,required TResult Function()  checkSecurityStatus,required TResult Function()  routeConsumed,required TResult Function()  dismissError,required TResult Function()  clearFiles,required TResult Function()  viewAllFiles,}) {final _that = this;
switch (_that) {
case _FetchFiles():
return fetchFiles();case _Refresh():
return refresh();case _Retry():
return retry();case _PickFile():
return pickFile();case _FileSelected():
return fileSelected(_that.file);case _OpenRecentFile():
return openRecentFile(_that.file);case _DeleteFile():
return deleteFile(_that.fileId);case _ShareFile():
return shareFile(_that.fileId);case _ToggleCompression():
return toggleCompression(_that.enabled);case _CheckSecurityStatus():
return checkSecurityStatus();case _RouteConsumed():
return routeConsumed();case _DismissError():
return dismissError();case _ClearFiles():
return clearFiles();case _ViewAllFiles():
return viewAllFiles();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchFiles,TResult? Function()?  refresh,TResult? Function()?  retry,TResult? Function()?  pickFile,TResult? Function( File file)?  fileSelected,TResult? Function( EncryptedFile file)?  openRecentFile,TResult? Function( String fileId)?  deleteFile,TResult? Function( String fileId)?  shareFile,TResult? Function( bool enabled)?  toggleCompression,TResult? Function()?  checkSecurityStatus,TResult? Function()?  routeConsumed,TResult? Function()?  dismissError,TResult? Function()?  clearFiles,TResult? Function()?  viewAllFiles,}) {final _that = this;
switch (_that) {
case _FetchFiles() when fetchFiles != null:
return fetchFiles();case _Refresh() when refresh != null:
return refresh();case _Retry() when retry != null:
return retry();case _PickFile() when pickFile != null:
return pickFile();case _FileSelected() when fileSelected != null:
return fileSelected(_that.file);case _OpenRecentFile() when openRecentFile != null:
return openRecentFile(_that.file);case _DeleteFile() when deleteFile != null:
return deleteFile(_that.fileId);case _ShareFile() when shareFile != null:
return shareFile(_that.fileId);case _ToggleCompression() when toggleCompression != null:
return toggleCompression(_that.enabled);case _CheckSecurityStatus() when checkSecurityStatus != null:
return checkSecurityStatus();case _RouteConsumed() when routeConsumed != null:
return routeConsumed();case _DismissError() when dismissError != null:
return dismissError();case _ClearFiles() when clearFiles != null:
return clearFiles();case _ViewAllFiles() when viewAllFiles != null:
return viewAllFiles();case _:
  return null;

}
}

}

/// @nodoc


class _FetchFiles implements DashboardEvent {
  const _FetchFiles();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchFiles);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.fetchFiles()';
}


}




/// @nodoc


class _Refresh implements DashboardEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.refresh()';
}


}




/// @nodoc


class _Retry implements DashboardEvent {
  const _Retry();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Retry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.retry()';
}


}




/// @nodoc


class _PickFile implements DashboardEvent {
  const _PickFile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickFile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.pickFile()';
}


}




/// @nodoc


class _FileSelected implements DashboardEvent {
  const _FileSelected(this.file);
  

 final  File file;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileSelectedCopyWith<_FileSelected> get copyWith => __$FileSelectedCopyWithImpl<_FileSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileSelected&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'DashboardEvent.fileSelected(file: $file)';
}


}

/// @nodoc
abstract mixin class _$FileSelectedCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$FileSelectedCopyWith(_FileSelected value, $Res Function(_FileSelected) _then) = __$FileSelectedCopyWithImpl;
@useResult
$Res call({
 File file
});




}
/// @nodoc
class __$FileSelectedCopyWithImpl<$Res>
    implements _$FileSelectedCopyWith<$Res> {
  __$FileSelectedCopyWithImpl(this._self, this._then);

  final _FileSelected _self;
  final $Res Function(_FileSelected) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_FileSelected(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File,
  ));
}


}

/// @nodoc


class _OpenRecentFile implements DashboardEvent {
  const _OpenRecentFile(this.file);
  

 final  EncryptedFile file;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenRecentFileCopyWith<_OpenRecentFile> get copyWith => __$OpenRecentFileCopyWithImpl<_OpenRecentFile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenRecentFile&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'DashboardEvent.openRecentFile(file: $file)';
}


}

/// @nodoc
abstract mixin class _$OpenRecentFileCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$OpenRecentFileCopyWith(_OpenRecentFile value, $Res Function(_OpenRecentFile) _then) = __$OpenRecentFileCopyWithImpl;
@useResult
$Res call({
 EncryptedFile file
});


$EncryptedFileCopyWith<$Res> get file;

}
/// @nodoc
class __$OpenRecentFileCopyWithImpl<$Res>
    implements _$OpenRecentFileCopyWith<$Res> {
  __$OpenRecentFileCopyWithImpl(this._self, this._then);

  final _OpenRecentFile _self;
  final $Res Function(_OpenRecentFile) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = null,}) {
  return _then(_OpenRecentFile(
null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as EncryptedFile,
  ));
}

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptedFileCopyWith<$Res> get file {
  
  return $EncryptedFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

/// @nodoc


class _DeleteFile implements DashboardEvent {
  const _DeleteFile(this.fileId);
  

 final  String fileId;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteFileCopyWith<_DeleteFile> get copyWith => __$DeleteFileCopyWithImpl<_DeleteFile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteFile&&(identical(other.fileId, fileId) || other.fileId == fileId));
}


@override
int get hashCode => Object.hash(runtimeType,fileId);

@override
String toString() {
  return 'DashboardEvent.deleteFile(fileId: $fileId)';
}


}

/// @nodoc
abstract mixin class _$DeleteFileCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$DeleteFileCopyWith(_DeleteFile value, $Res Function(_DeleteFile) _then) = __$DeleteFileCopyWithImpl;
@useResult
$Res call({
 String fileId
});




}
/// @nodoc
class __$DeleteFileCopyWithImpl<$Res>
    implements _$DeleteFileCopyWith<$Res> {
  __$DeleteFileCopyWithImpl(this._self, this._then);

  final _DeleteFile _self;
  final $Res Function(_DeleteFile) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileId = null,}) {
  return _then(_DeleteFile(
null == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ShareFile implements DashboardEvent {
  const _ShareFile(this.fileId);
  

 final  String fileId;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShareFileCopyWith<_ShareFile> get copyWith => __$ShareFileCopyWithImpl<_ShareFile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareFile&&(identical(other.fileId, fileId) || other.fileId == fileId));
}


@override
int get hashCode => Object.hash(runtimeType,fileId);

@override
String toString() {
  return 'DashboardEvent.shareFile(fileId: $fileId)';
}


}

/// @nodoc
abstract mixin class _$ShareFileCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$ShareFileCopyWith(_ShareFile value, $Res Function(_ShareFile) _then) = __$ShareFileCopyWithImpl;
@useResult
$Res call({
 String fileId
});




}
/// @nodoc
class __$ShareFileCopyWithImpl<$Res>
    implements _$ShareFileCopyWith<$Res> {
  __$ShareFileCopyWithImpl(this._self, this._then);

  final _ShareFile _self;
  final $Res Function(_ShareFile) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fileId = null,}) {
  return _then(_ShareFile(
null == fileId ? _self.fileId : fileId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleCompression implements DashboardEvent {
  const _ToggleCompression(this.enabled);
  

 final  bool enabled;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleCompressionCopyWith<_ToggleCompression> get copyWith => __$ToggleCompressionCopyWithImpl<_ToggleCompression>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleCompression&&(identical(other.enabled, enabled) || other.enabled == enabled));
}


@override
int get hashCode => Object.hash(runtimeType,enabled);

@override
String toString() {
  return 'DashboardEvent.toggleCompression(enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$ToggleCompressionCopyWith<$Res> implements $DashboardEventCopyWith<$Res> {
  factory _$ToggleCompressionCopyWith(_ToggleCompression value, $Res Function(_ToggleCompression) _then) = __$ToggleCompressionCopyWithImpl;
@useResult
$Res call({
 bool enabled
});




}
/// @nodoc
class __$ToggleCompressionCopyWithImpl<$Res>
    implements _$ToggleCompressionCopyWith<$Res> {
  __$ToggleCompressionCopyWithImpl(this._self, this._then);

  final _ToggleCompression _self;
  final $Res Function(_ToggleCompression) _then;

/// Create a copy of DashboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? enabled = null,}) {
  return _then(_ToggleCompression(
null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _CheckSecurityStatus implements DashboardEvent {
  const _CheckSecurityStatus();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckSecurityStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.checkSecurityStatus()';
}


}




/// @nodoc


class _RouteConsumed implements DashboardEvent {
  const _RouteConsumed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteConsumed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.routeConsumed()';
}


}




/// @nodoc


class _DismissError implements DashboardEvent {
  const _DismissError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DismissError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.dismissError()';
}


}




/// @nodoc


class _ClearFiles implements DashboardEvent {
  const _ClearFiles();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearFiles);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.clearFiles()';
}


}




/// @nodoc


class _ViewAllFiles implements DashboardEvent {
  const _ViewAllFiles();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewAllFiles);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DashboardEvent.viewAllFiles()';
}


}




/// @nodoc
mixin _$DashboardState {

// ── Screen lifecycle ──────────────────────────────────
 PageStatus get status;// ── Core data ─────────────────────────────────────────
 List<EncryptedFile> get recentFiles; bool get isCompressionEnabled; String get securityStatus;// ── Error ──────────────────────────────────────────────
 String? get errorMessage;// ── Operation tracking ─────────────────────────────────
 Set<String> get deletingFileIds; Set<String> get sharingFileIds;// ── Route state (router reads this, not widgets) ────────
// NoRoute = stay here, anything else = navigate
 AppRoute get pendingRoute;
/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStateCopyWith<DashboardState> get copyWith => _$DashboardStateCopyWithImpl<DashboardState>(this as DashboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.recentFiles, recentFiles)&&(identical(other.isCompressionEnabled, isCompressionEnabled) || other.isCompressionEnabled == isCompressionEnabled)&&(identical(other.securityStatus, securityStatus) || other.securityStatus == securityStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.deletingFileIds, deletingFileIds)&&const DeepCollectionEquality().equals(other.sharingFileIds, sharingFileIds)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(recentFiles),isCompressionEnabled,securityStatus,errorMessage,const DeepCollectionEquality().hash(deletingFileIds),const DeepCollectionEquality().hash(sharingFileIds),pendingRoute);

@override
String toString() {
  return 'DashboardState(status: $status, recentFiles: $recentFiles, isCompressionEnabled: $isCompressionEnabled, securityStatus: $securityStatus, errorMessage: $errorMessage, deletingFileIds: $deletingFileIds, sharingFileIds: $sharingFileIds, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class $DashboardStateCopyWith<$Res>  {
  factory $DashboardStateCopyWith(DashboardState value, $Res Function(DashboardState) _then) = _$DashboardStateCopyWithImpl;
@useResult
$Res call({
 PageStatus status, List<EncryptedFile> recentFiles, bool isCompressionEnabled, String securityStatus, String? errorMessage, Set<String> deletingFileIds, Set<String> sharingFileIds, AppRoute pendingRoute
});




}
/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._self, this._then);

  final DashboardState _self;
  final $Res Function(DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? recentFiles = null,Object? isCompressionEnabled = null,Object? securityStatus = null,Object? errorMessage = freezed,Object? deletingFileIds = null,Object? sharingFileIds = null,Object? pendingRoute = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageStatus,recentFiles: null == recentFiles ? _self.recentFiles : recentFiles // ignore: cast_nullable_to_non_nullable
as List<EncryptedFile>,isCompressionEnabled: null == isCompressionEnabled ? _self.isCompressionEnabled : isCompressionEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityStatus: null == securityStatus ? _self.securityStatus : securityStatus // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deletingFileIds: null == deletingFileIds ? _self.deletingFileIds : deletingFileIds // ignore: cast_nullable_to_non_nullable
as Set<String>,sharingFileIds: null == sharingFileIds ? _self.sharingFileIds : sharingFileIds // ignore: cast_nullable_to_non_nullable
as Set<String>,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardState].
extension DashboardStatePatterns on DashboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardState value)  $default,){
final _that = this;
switch (_that) {
case _DashboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardState value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PageStatus status,  List<EncryptedFile> recentFiles,  bool isCompressionEnabled,  String securityStatus,  String? errorMessage,  Set<String> deletingFileIds,  Set<String> sharingFileIds,  AppRoute pendingRoute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.status,_that.recentFiles,_that.isCompressionEnabled,_that.securityStatus,_that.errorMessage,_that.deletingFileIds,_that.sharingFileIds,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PageStatus status,  List<EncryptedFile> recentFiles,  bool isCompressionEnabled,  String securityStatus,  String? errorMessage,  Set<String> deletingFileIds,  Set<String> sharingFileIds,  AppRoute pendingRoute)  $default,) {final _that = this;
switch (_that) {
case _DashboardState():
return $default(_that.status,_that.recentFiles,_that.isCompressionEnabled,_that.securityStatus,_that.errorMessage,_that.deletingFileIds,_that.sharingFileIds,_that.pendingRoute);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PageStatus status,  List<EncryptedFile> recentFiles,  bool isCompressionEnabled,  String securityStatus,  String? errorMessage,  Set<String> deletingFileIds,  Set<String> sharingFileIds,  AppRoute pendingRoute)?  $default,) {final _that = this;
switch (_that) {
case _DashboardState() when $default != null:
return $default(_that.status,_that.recentFiles,_that.isCompressionEnabled,_that.securityStatus,_that.errorMessage,_that.deletingFileIds,_that.sharingFileIds,_that.pendingRoute);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardState extends DashboardState {
  const _DashboardState({this.status = PageStatus.initial, final  List<EncryptedFile> recentFiles = const [], this.isCompressionEnabled = true, this.securityStatus = 'Engaged', this.errorMessage, final  Set<String> deletingFileIds = const <String>{}, final  Set<String> sharingFileIds = const <String>{}, this.pendingRoute = const NoRoute()}): _recentFiles = recentFiles,_deletingFileIds = deletingFileIds,_sharingFileIds = sharingFileIds,super._();
  

// ── Screen lifecycle ──────────────────────────────────
@override@JsonKey() final  PageStatus status;
// ── Core data ─────────────────────────────────────────
 final  List<EncryptedFile> _recentFiles;
// ── Core data ─────────────────────────────────────────
@override@JsonKey() List<EncryptedFile> get recentFiles {
  if (_recentFiles is EqualUnmodifiableListView) return _recentFiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentFiles);
}

@override@JsonKey() final  bool isCompressionEnabled;
@override@JsonKey() final  String securityStatus;
// ── Error ──────────────────────────────────────────────
@override final  String? errorMessage;
// ── Operation tracking ─────────────────────────────────
 final  Set<String> _deletingFileIds;
// ── Operation tracking ─────────────────────────────────
@override@JsonKey() Set<String> get deletingFileIds {
  if (_deletingFileIds is EqualUnmodifiableSetView) return _deletingFileIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_deletingFileIds);
}

 final  Set<String> _sharingFileIds;
@override@JsonKey() Set<String> get sharingFileIds {
  if (_sharingFileIds is EqualUnmodifiableSetView) return _sharingFileIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_sharingFileIds);
}

// ── Route state (router reads this, not widgets) ────────
// NoRoute = stay here, anything else = navigate
@override@JsonKey() final  AppRoute pendingRoute;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStateCopyWith<_DashboardState> get copyWith => __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._recentFiles, _recentFiles)&&(identical(other.isCompressionEnabled, isCompressionEnabled) || other.isCompressionEnabled == isCompressionEnabled)&&(identical(other.securityStatus, securityStatus) || other.securityStatus == securityStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._deletingFileIds, _deletingFileIds)&&const DeepCollectionEquality().equals(other._sharingFileIds, _sharingFileIds)&&(identical(other.pendingRoute, pendingRoute) || other.pendingRoute == pendingRoute));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_recentFiles),isCompressionEnabled,securityStatus,errorMessage,const DeepCollectionEquality().hash(_deletingFileIds),const DeepCollectionEquality().hash(_sharingFileIds),pendingRoute);

@override
String toString() {
  return 'DashboardState(status: $status, recentFiles: $recentFiles, isCompressionEnabled: $isCompressionEnabled, securityStatus: $securityStatus, errorMessage: $errorMessage, deletingFileIds: $deletingFileIds, sharingFileIds: $sharingFileIds, pendingRoute: $pendingRoute)';
}


}

/// @nodoc
abstract mixin class _$DashboardStateCopyWith<$Res> implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(_DashboardState value, $Res Function(_DashboardState) _then) = __$DashboardStateCopyWithImpl;
@override @useResult
$Res call({
 PageStatus status, List<EncryptedFile> recentFiles, bool isCompressionEnabled, String securityStatus, String? errorMessage, Set<String> deletingFileIds, Set<String> sharingFileIds, AppRoute pendingRoute
});




}
/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(this._self, this._then);

  final _DashboardState _self;
  final $Res Function(_DashboardState) _then;

/// Create a copy of DashboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? recentFiles = null,Object? isCompressionEnabled = null,Object? securityStatus = null,Object? errorMessage = freezed,Object? deletingFileIds = null,Object? sharingFileIds = null,Object? pendingRoute = null,}) {
  return _then(_DashboardState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PageStatus,recentFiles: null == recentFiles ? _self._recentFiles : recentFiles // ignore: cast_nullable_to_non_nullable
as List<EncryptedFile>,isCompressionEnabled: null == isCompressionEnabled ? _self.isCompressionEnabled : isCompressionEnabled // ignore: cast_nullable_to_non_nullable
as bool,securityStatus: null == securityStatus ? _self.securityStatus : securityStatus // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deletingFileIds: null == deletingFileIds ? _self._deletingFileIds : deletingFileIds // ignore: cast_nullable_to_non_nullable
as Set<String>,sharingFileIds: null == sharingFileIds ? _self._sharingFileIds : sharingFileIds // ignore: cast_nullable_to_non_nullable
as Set<String>,pendingRoute: null == pendingRoute ? _self.pendingRoute : pendingRoute // ignore: cast_nullable_to_non_nullable
as AppRoute,
  ));
}


}

// dart format on
