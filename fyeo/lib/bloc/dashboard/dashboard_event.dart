part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  // ── Data ────────────────────────────────────────────────
  const factory DashboardEvent.fetchFiles() = _FetchFiles;
  const factory DashboardEvent.refresh() = _Refresh;
  const factory DashboardEvent.retry() = _Retry;

  // ── File flow ────────────────────────────────────────────
  const factory DashboardEvent.pickFile() = _PickFile;
  const factory DashboardEvent.fileSelected(File file) = _FileSelected;
  const factory DashboardEvent.openRecentFile(EncryptedFile file) =
      _OpenRecentFile;

  // ── File actions ─────────────────────────────────────────
  const factory DashboardEvent.deleteFile(String fileId) = _DeleteFile;
  const factory DashboardEvent.shareFile(String fileId) = _ShareFile;

  // ── Settings ─────────────────────────────────────────────
  const factory DashboardEvent.toggleCompression(bool enabled) =
      _ToggleCompression;
  const factory DashboardEvent.checkSecurityStatus() = _CheckSecurityStatus;

  // ── Route lifecycle ──────────────────────────────────────
  // Called by router AFTER it has handled the navigation
  const factory DashboardEvent.routeConsumed() = _RouteConsumed;

  // ── UI ───────────────────────────────────────────────────
  const factory DashboardEvent.dismissError() = _DismissError;
  const factory DashboardEvent.clearFiles() = _ClearFiles;
  const factory DashboardEvent.viewAllFiles() = _ViewAllFiles;
}
