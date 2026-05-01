part of 'encryption_success_bloc.dart';

@freezed
abstract class EncryptionSuccessState with _$EncryptionSuccessState {
  const EncryptionSuccessState._();

  const factory EncryptionSuccessState({
    required EncryptionResult encryptionResult,

    @Default(ExportStatus.idle) ExportStatus exportStatus,
    String? exportErrorMessage,

    @Default(ShareStatus.idle) ShareStatus shareStatus,

    @Default(false) bool pathCopied,

    @Default(NoRoute()) AppRoute pendingRoute,
  }) = _EncryptionSuccessState;

  bool get isExporting => exportStatus == ExportStatus.inProgress;
  bool get isSharing => shareStatus == ShareStatus.inProgress;
  bool get exportSucceeded => exportStatus == ExportStatus.success;
  bool get hasExportError => exportStatus == ExportStatus.error;
}
