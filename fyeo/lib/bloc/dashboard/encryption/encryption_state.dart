part of 'encryption_bloc.dart';

@freezed
abstract class EncryptionState with _$EncryptionState {
  const EncryptionState._();

  const factory EncryptionState({
    // ── Screen lifecycle ──────────────────────────────────
    @Default(PageStatus.initial) PageStatus status,
    @Default(0.5) double intensity,
    @Default(PasswordFormz.pure()) PasswordFormz password,
    @Default(false) bool isPasswordVisible,
    @Default(0.0) double encryptionProgress,
    String? errorMessage,

    EncryptionResult? encryptionResult,
    @Default(NoRoute()) AppRoute pendingRoute,
  }) = _EncryptionState;

  bool get isPasswordValid => password.isValid;
  bool get isFormValid => password.isValid && intensity > 0;
}

class PasswordFormz extends FormzInput<String, ValidationError> {
  const PasswordFormz.pure([super.value = '']) : super.pure();
  const PasswordFormz.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return ValidationError.empty;
    }

    if (value.length < 8) {
      return ValidationError.short;
    }

    return null;
  }
}
