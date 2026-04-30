import 'dart:io';

import 'package:formz/formz.dart';
import 'package:fyeo/enum/validator_error.dart';
import 'package:fyeo/models/encryption_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fyeo/enum/page_status.dart';
import 'package:fyeo/router/app_routes.dart';

part 'encryption_event.dart';
part 'encryption_state.dart';
part 'encryption_bloc.freezed.dart';

class EncryptionBloc extends Bloc<EncryptionEvent, EncryptionState> {
  final File fileToEncrypt;

  EncryptionBloc({required this.fileToEncrypt})
    : super(const EncryptionState()) {
    on<_UpdateIntensity>(_onUpdateIntensity);
    on<_TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<_UpdatePassword>(_onUpdatePassword);
    on<_StartEncryption>(_onStartEncryption);
    on<_RetryEncryption>(_onRetryEncryption);
    on<_EncryptionCancelled>(_onEncryptionCancelled);
    on<_ResetForm>(_onResetForm);
    on<_RouteConsumed>(_onRouteConsumed);
  }

  Future<void> _onUpdateIntensity(
    _UpdateIntensity event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(state.copyWith(intensity: event.value));
  }

  Future<void> _onTogglePasswordVisibility(
    _TogglePasswordVisibility event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
  }

  Future<void> _onUpdatePassword(
    _UpdatePassword event,
    Emitter<EncryptionState> emit,
  ) async {
    final password = PasswordFormz.dirty(event.password);

    emit(state.copyWith(password: password));
  }

  Future<void> _onStartEncryption(
    _StartEncryption event,
    Emitter<EncryptionState> emit,
  ) async {
    if (state.status == PageStatus.loading) return;
    if (!state.isFormValid) {
      emit(
        state.copyWith(
          status: PageStatus.error,
          errorMessage: 'Please fill all required fields correctly',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        status: PageStatus.loading,
        encryptionProgress: 0.0,
        errorMessage: null,
      ),
    );

    try {
      // TODO: Replace with real encryption service that exposes a progress stream
      // Example of what the real implementation will look like:
      // await for (final progress in _encryptionService.encrypt(
      //   file: fileToEncrypt,
      //   password: state.password,
      //   intensity: state.intensity,
      // )) {
      //   emit(state.copyWith(encryptionProgress: progress));
      // }

      // Mock progress for now
      for (int i = 0; i <= 100; i += 10) {
        await Future.delayed(const Duration(milliseconds: 200));
        emit(state.copyWith(encryptionProgress: i.toDouble()));
      }

      final result = EncryptionResult(
        encryptedFilePath: '${fileToEncrypt.path}.encrypted',
        originalFileName: fileToEncrypt.path.split('/').last,
        originalSize: await fileToEncrypt.length(),
        encryptedSize: await fileToEncrypt.length() + 1200000,
        compressionRatio: '-4.0%',
        encryptedAt: DateTime.now(),
        usedSmartCompression: true,
        intensityUsed: state.intensity,
      );

      // Emit success + set route trigger
      emit(
        state.copyWith(
          status: PageStatus.loaded,
          encryptionResult: result,
          encryptionProgress: 100.0,
          pendingRoute: SuccessRoute(result: result),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PageStatus.error,
          errorMessage: 'Encryption failed: ${e.toString()}',
          encryptionProgress: 0.0,
        ),
      );
    }
  }

  Future<void> _onRetryEncryption(
    _RetryEncryption event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(
      state.copyWith(
        status: PageStatus.initial,
        errorMessage: null,
        encryptionProgress: 0.0,
      ),
    );
    add(const EncryptionEvent.startEncryption());
  }

  Future<void> _onEncryptionCancelled(
    _EncryptionCancelled event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(const EncryptionState());
  }

  Future<void> _onResetForm(
    _ResetForm event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(const EncryptionState());
  }

  Future<void> _onRouteConsumed(
    _RouteConsumed event,
    Emitter<EncryptionState> emit,
  ) async {
    emit(state.copyWith(pendingRoute: const NoRoute()));
  }
}
