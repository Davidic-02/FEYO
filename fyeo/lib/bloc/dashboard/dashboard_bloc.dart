import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fyeo/enum/page_status.dart';
import 'package:fyeo/models/encrypted_file.dart';
import 'package:fyeo/router/app_routes.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState()) {
    on<_FetchFiles>(_onFetchFiles);
    on<_Refresh>(_onRefresh);
    on<_Retry>(_onRetry);
    on<_PickFile>(_onPickFile);
    on<_FileSelected>(_onFileSelected);
    on<_OpenRecentFile>(_onOpenRecentFile);
    on<_DeleteFile>(_onDeleteFile);
    on<_ShareFile>(_onShareFile);
    on<_ToggleCompression>(_onToggleCompression);
    on<_CheckSecurityStatus>(_onCheckSecurityStatus);
    on<_RouteConsumed>(_onRouteConsumed);
    on<_DismissError>(_onDismissError);
    on<_ClearFiles>(_onClearFiles);
    on<_ViewAllFiles>(_onViewAllFiles);
  }

  Future<void> _onFetchFiles(
    _FetchFiles event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      emit(state.copyWith(status: PageStatus.loading, errorMessage: null));

      const List<EncryptedFile> files = [];

      emit(
        state.copyWith(
          status: files.isEmpty ? PageStatus.empty : PageStatus.loaded,
          recentFiles: files,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: PageStatus.error, errorMessage: e.toString()),
      );
    }
  }

  Future<void> _onRefresh(_Refresh event, Emitter<DashboardState> emit) async {
    try {
      // TODO: final files = await _repository.getRecentFiles();
      const List<EncryptedFile> files = [];
      emit(
        state.copyWith(
          status: files.isEmpty ? PageStatus.empty : PageStatus.loaded,
          recentFiles: files,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: PageStatus.error, errorMessage: e.toString()),
      );
    }
  }

  Future<void> _onRetry(_Retry event, Emitter<DashboardState> emit) async {
    add(const DashboardEvent.fetchFiles());
  }

  Future<void> _onPickFile(
    _PickFile event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      // TODO: final result = await FilePicker.platform.pickFiles(
      //   type: FileType.image,
      // );
      // if (result != null && result.files.single.path != null) {
      //   add(FileSelected(File(result.files.single.path!)));
      // }
    } catch (e) {
      emit(
        state.copyWith(
          status: PageStatus.error,
          errorMessage: 'Failed to pick file',
        ),
      );
    }
  }

  Future<void> _onFileSelected(
    _FileSelected event,
    Emitter<DashboardState> emit,
  ) async {
    // Set the route — GoRouter redirect will read this
    // and push /encrypt with the file as extra
    emit(state.copyWith(pendingRoute: EncryptRoute(event.file)));
  }

  Future<void> _onOpenRecentFile(
    _OpenRecentFile event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: EncryptRoute(File(event.file.filePath))));
  }

  Future<void> _onRouteConsumed(
    _RouteConsumed event,
    Emitter<DashboardState> emit,
  ) async {
    // Router calls this after it handles the navigation
    // Clears the route so it doesn't fire again
    emit(state.copyWith(pendingRoute: const NoRoute()));
  }

  Future<void> _onDeleteFile(
    _DeleteFile event,
    Emitter<DashboardState> emit,
  ) async {
    emit(
      state.copyWith(deletingFileIds: {...state.deletingFileIds, event.fileId}),
    );

    try {
      // TODO: await _repository.deleteFile(event.fileId);
      final updatedFiles = state.recentFiles
          .where((f) => f.id != event.fileId)
          .toList();
      emit(
        state.copyWith(
          deletingFileIds: state.deletingFileIds
              .where((id) => id != event.fileId)
              .toSet(),
          recentFiles: updatedFiles,
          status: updatedFiles.isEmpty ? PageStatus.empty : PageStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          deletingFileIds: state.deletingFileIds
              .where((id) => id != event.fileId)
              .toSet(),
          errorMessage: 'Failed to delete file',
        ),
      );
    }
  }

  Future<void> _onShareFile(
    _ShareFile event,
    Emitter<DashboardState> emit,
  ) async {
    emit(
      state.copyWith(sharingFileIds: {...state.sharingFileIds, event.fileId}),
    );

    try {
      // TODO: final file = state.recentFiles
      //     .firstWhere((f) => f.id == event.fileId);
      // await Share.shareXFiles([XFile(file.filePath)]);
      emit(
        state.copyWith(
          sharingFileIds: state.sharingFileIds
              .where((id) => id != event.fileId)
              .toSet(),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          sharingFileIds: state.sharingFileIds
              .where((id) => id != event.fileId)
              .toSet(),
          errorMessage: 'Failed to share file',
        ),
      );
    }
  }

  Future<void> _onToggleCompression(
    _ToggleCompression event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      // TODO: await _prefs.setBool(PrefKeys.autoCompression, event.enabled);
      emit(state.copyWith(isCompressionEnabled: event.enabled));
    } catch (e) {
      emit(state.copyWith(errorMessage: 'Failed to toggle compression'));
    }
  }

  Future<void> _onCheckSecurityStatus(
    _CheckSecurityStatus event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      // TODO: final status = await _securityService.getStatus();
      emit(state.copyWith(securityStatus: 'Engaged'));
    } catch (e) {
      emit(state.copyWith(securityStatus: 'Error'));
    }
  }

  Future<void> _onDismissError(
    _DismissError event,
    Emitter<DashboardState> emit,
  ) async {
    emit(
      state.copyWith(
        status: state.hasFiles ? PageStatus.loaded : PageStatus.empty,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onClearFiles(
    _ClearFiles event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      // TODO: await _repository.clearAll();
      emit(state.copyWith(recentFiles: [], status: PageStatus.empty));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  Future<void> _onViewAllFiles(
    _ViewAllFiles event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: const RecentFilesRoute()));
  }
}
