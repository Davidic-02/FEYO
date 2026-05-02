part of 'decryption_bloc.dart';

@freezed
class DecryptionEvent with _$DecryptionEvent {
  // ── File selection ───────────────────────────────────────
  const factory DecryptionEvent.pickEncryptedFile() = _PickEncryptedFile;
  const factory DecryptionEvent.fileSelected(String filePath) = _FileSelected;

  // ── Passphrase ───────────────────────────────────────────
  const factory DecryptionEvent.updatePassphrase(String value) =
      _UpdatePassphrase;
  const factory DecryptionEvent.togglePassphraseVisibility() =
      _TogglePassphraseVisibility;

  // ── Decryption ───────────────────────────────────────────
  const factory DecryptionEvent.decryptAndReveal() = _DecryptAndReveal;
  const factory DecryptionEvent.retryDecryption() = _RetryDecryption;
  const factory DecryptionEvent.resetForm() = _ResetForm;

  // ── Route ────────────────────────────────────────────────
  const factory DecryptionEvent.routeConsumed() = _RouteConsumed;
}
