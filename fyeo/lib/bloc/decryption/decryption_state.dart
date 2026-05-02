part of 'decryption_bloc.dart';

@freezed
abstract class DecryptionState with _$DecryptionState {
  const DecryptionState._();

  const factory DecryptionState({
    @Default(DecryptionPageStatus.initial) DecryptionPageStatus status,

    String? selectedFilePath,
    String? selectedFileName,

    @Default(PassphraseFormz.pure()) PassphraseFormz passphrase,
    @Default(false) bool isPassphraseVisible,

    @Default(0.0) double decryptionProgress,

    String? errorMessage,
    String? decryptedFilePath,

    @Default(NoRoute()) AppRoute pendingRoute,
  }) = _DecryptionState;

  bool get hasFile => selectedFilePath != null;
  bool get isPassphraseValid => passphrase.isValid;
  bool get isFormValid => hasFile && isPassphraseValid;

  bool get isDecrypting => status == DecryptionPageStatus.loading;
  bool get isPickingFile => status == DecryptionPageStatus.pickingFile;
  bool get hasError => status == DecryptionPageStatus.error;
  bool get isSuccess => status == DecryptionPageStatus.loaded;
}

class PassphraseFormz extends FormzInput<String, ValidationError> {
  const PassphraseFormz.pure([super.value = '']) : super.pure();
  const PassphraseFormz.dirty([super.value = '']) : super.dirty();

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
