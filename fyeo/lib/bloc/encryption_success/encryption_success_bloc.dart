import 'package:fyeo/enum/export_status.dart';
import 'package:fyeo/enum/share_status.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fyeo/router/app_routes.dart';

part 'encryption_success_event.dart';
part 'encryption_success_state.dart';
part 'encryption_success_bloc.freezed.dart';

class EncryptionSuccessBloc
    extends Bloc<EncryptionSuccessEvent, EncryptionSuccessState> {
  EncryptionSuccessBloc({required EncryptionResult result})
    : super(EncryptionSuccessState(encryptionResult: result)) {
    on<_ExportToGallery>(_onExportToGallery);
    on<_ShareFile>(_onShareFile);
    on<_CopyFilePath>(_onCopyFilePath);
    on<_GoToDashboard>(_onGoToDashboard);
    on<_RouteConsumed>(_onRouteConsumed);
  }

  Future<void> _onExportToGallery(
    _ExportToGallery event,
    Emitter<EncryptionSuccessState> emit,
  ) async {
    if (state.exportStatus == ExportStatus.inProgress) return;
    emit(
      state.copyWith(
        exportStatus: ExportStatus.inProgress,
        exportErrorMessage: null,
      ),
    );

    try {
      // TODO: Use image_gallery_saver or gal package
      // await Gal.putImage(state.encryptionResult.encryptedFilePath);
      await Future.delayed(const Duration(seconds: 1)); // mock

      emit(state.copyWith(exportStatus: ExportStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          exportStatus: ExportStatus.error,
          exportErrorMessage: 'Failed to export: ${e.toString()}',
        ),
      );
    }
  }

  Future<void> _onShareFile(
    _ShareFile event,
    Emitter<EncryptionSuccessState> emit,
  ) async {
    if (state.shareStatus == ShareStatus.inProgress) return;
    emit(state.copyWith(shareStatus: ShareStatus.inProgress));

    try {
      // TODO: await Share.shareXFiles([XFile(state.encryptionResult.encryptedFilePath)]);
      await Future.delayed(const Duration(milliseconds: 500)); // mock

      emit(state.copyWith(shareStatus: ShareStatus.success));
      await Future.delayed(const Duration(milliseconds: 300));
      emit(state.copyWith(shareStatus: ShareStatus.idle));
    } catch (e) {
      emit(state.copyWith(shareStatus: ShareStatus.error));
    }
  }

  Future<void> _onCopyFilePath(
    _CopyFilePath event,
    Emitter<EncryptionSuccessState> emit,
  ) async {
    // TODO: Clipboard.setData(ClipboardData(text: state.encryptionResult.encryptedFilePath));
    emit(state.copyWith(pathCopied: true));
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(pathCopied: false));
  }

  Future<void> _onGoToDashboard(
    _GoToDashboard event,
    Emitter<EncryptionSuccessState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: const DashboardRoute()));
  }

  Future<void> _onRouteConsumed(
    _RouteConsumed event,
    Emitter<EncryptionSuccessState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: const NoRoute()));
  }
}
