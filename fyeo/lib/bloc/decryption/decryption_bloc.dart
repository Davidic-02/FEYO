import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fyeo/enum/decryption_page_status.dart';
import 'package:fyeo/router/app_routes.dart';
import 'package:formz/formz.dart';
import 'package:fyeo/enum/validator_error.dart';
import 'package:path/path.dart' as p;

part 'decryption_event.dart';
part 'decryption_state.dart';
part 'decryption_bloc.freezed.dart';

class DecryptionBloc extends Bloc<DecryptionEvent, DecryptionState> {
  DecryptionBloc() : super(const DecryptionState()) {
    on<_PickEncryptedFile>(_onPickEncryptedFile);
    on<_FileSelected>(_onFileSelected);
    on<_UpdatePassphrase>(_onUpdatePassphrase);
    on<_TogglePassphraseVisibility>(_onTogglePassphraseVisibility);
    on<_DecryptAndReveal>(_onDecryptAndReveal);
    on<_RetryDecryption>(_onRetryDecryption);
    on<_ResetForm>(_onResetForm);
    on<_RouteConsumed>(_onRouteConsumed);
  }

  Future<void> _onPickEncryptedFile(
    _PickEncryptedFile event,
    Emitter<DecryptionState> emit,
  ) async {
    emit(state.copyWith(status: DecryptionPageStatus.pickingFile));
    try {
      // TODO: final result = await FilePicker.platform.pickFiles(
      //   type: FileType.custom,
      //   allowedExtensions: ['fy', 'encrypted'],
      // );
      // if (result != null) {
      //   add(DecryptionEvent.fileSelected(result.files.single.path!));
      // }
      // Mock for now
      emit(state.copyWith(status: DecryptionPageStatus.initial));
    } catch (e) {
      emit(
        state.copyWith(
          status: DecryptionPageStatus.error,
          errorMessage: 'Failed to pick file',
        ),
      );
    }
  }

  Future<void> _onFileSelected(
    _FileSelected event,
    Emitter<DecryptionState> emit,
  ) async {
    final fileName = p.basename(event.filePath);
    emit(
      state.copyWith(
        status: DecryptionPageStatus.initial,
        selectedFilePath: event.filePath,
        selectedFileName: fileName,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onUpdatePassphrase(
    _UpdatePassphrase event,
    Emitter<DecryptionState> emit,
  ) async {
    final passphrase = PassphraseFormz.dirty(event.value);

    emit(state.copyWith(passphrase: passphrase));
  }

  Future<void> _onTogglePassphraseVisibility(
    _TogglePassphraseVisibility event,
    Emitter<DecryptionState> emit,
  ) async {
    emit(state.copyWith(isPassphraseVisible: !state.isPassphraseVisible));
  }

  Future<void> _onDecryptAndReveal(
    _DecryptAndReveal event,
    Emitter<DecryptionState> emit,
  ) async {
    if (!state.isFormValid) {
      emit(
        state.copyWith(
          status: DecryptionPageStatus.error,
          errorMessage: 'Please select a file and enter your passphrase',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: DecryptionPageStatus.loading,
        decryptionProgress: 0.0,
        errorMessage: null,
      ),
    );

    try {
      // TODO: Replace with real decryption service stream
      // await for (final progress in _decryptionService.decrypt(
      //   filePath: state.selectedFilePath!,
      //   passphrase: state.passphrase,
      // )) {
      //   emit(state.copyWith(decryptionProgress: progress));
      // }

      // Mock progress
      for (int i = 0; i <= 100; i += 10) {
        await Future.delayed(const Duration(milliseconds: 150));
        emit(state.copyWith(decryptionProgress: i.toDouble()));
        final decryptedPath = state.selectedFilePath!
            .replaceAll('.encrypted', '')
            .replaceAll('.fy', '');
        emit(
          state.copyWith(
            status: DecryptionPageStatus.loaded,
            decryptedFilePath: decryptedPath,
            decryptionProgress: 100.0,
            // TODO: Navigate to decrypted image viewer
            // pendingRoute: DecryptedViewRoute(path: decryptedPath),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: DecryptionPageStatus.error,
          errorMessage:
              'Decryption failed. Check your passphrase and try again.',
          decryptionProgress: 0.0,
        ),
      );
    }
  }

  Future<void> _onRetryDecryption(
    _RetryDecryption event,
    Emitter<DecryptionState> emit,
  ) async {
    emit(
      state.copyWith(
        status: DecryptionPageStatus.initial,
        errorMessage: null,
        decryptionProgress: 0.0,
      ),
    );
    add(const DecryptionEvent.decryptAndReveal());
  }

  Future<void> _onResetForm(
    _ResetForm event,
    Emitter<DecryptionState> emit,
  ) async {
    emit(const DecryptionState());
  }

  Future<void> _onRouteConsumed(
    _RouteConsumed event,
    Emitter<DecryptionState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: const NoRoute()));
  }
}
