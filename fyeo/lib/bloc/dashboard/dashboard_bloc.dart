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

    Future<void> _onFileSelected(
      _FileSelected event,
      Emitter<DashboardState> emit,
    ) async {
      // Set the route — GoRouter redirect will read this
      // and push /encrypt with the file as extra
      emit(state.copyWith(pendingRoute: EncryptRoute(event.file)));
    }
  }
}
