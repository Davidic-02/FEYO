part of 'encryption_success_bloc.dart';

@freezed
abstract class EncryptionSuccessEvent with _$EncryptionSuccessEvent {
  const factory EncryptionSuccessEvent.exportToGallery() = _ExportToGallery;

  const factory EncryptionSuccessEvent.shareFile() = _ShareFile;
  const factory EncryptionSuccessEvent.copyFilePath() = _CopyFilePath;

  const factory EncryptionSuccessEvent.goToDashboard() = _GoToDashboard;
  const factory EncryptionSuccessEvent.routeConsumed() = _RouteConsumed;
}
