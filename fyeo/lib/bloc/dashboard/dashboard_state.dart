part of 'dashboard_bloc.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState({
    // ── Screen lifecycle ──────────────────────────────────
    @Default(PageStatus.initial) PageStatus status,

    // ── Core data ─────────────────────────────────────────
    @Default([]) List<EncryptedFile> recentFiles,
    @Default(true) bool isCompressionEnabled,
    @Default('Engaged') String securityStatus,

    // ── Error ──────────────────────────────────────────────
    String? errorMessage,

    // ── Operation tracking ─────────────────────────────────
    @Default(<String>{}) Set<String> deletingFileIds,
    @Default(<String>{}) Set<String> sharingFileIds,

    // ── Route state (router reads this, not widgets) ────────
    // NoRoute = stay here, anything else = navigate
    @Default(NoRoute()) AppRoute pendingRoute,
  }) = _DashboardState;

  // ── Derived getters ────────────────────────────────────
  bool get isLoading => status == PageStatus.loading;
  bool get hasFiles => recentFiles.isNotEmpty;
  bool get hasError => status == PageStatus.error;
  bool isDeleting(String id) => deletingFileIds.contains(id);
  bool isSharing(String id) => sharingFileIds.contains(id);
  bool get hasRoute => pendingRoute is! NoRoute;
}
