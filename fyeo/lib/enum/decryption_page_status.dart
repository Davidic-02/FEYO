enum DecryptionPageStatus { initial, pickingFile, loading, loaded, error }

@freezed
class DecryptionEvent with _$DecryptionEvent {
  const factory DecryptionEvent.pickEncryptedFile() = _PickEncryptedFile;
  const factory DecryptionEvent.fileSelected(String filePath) = _FileSelected;

  const factory DecryptionEvent.updatePassphrase(String value) =
      _UpdatePassphrase;
  const factory DecryptionEvent.togglePassphraseVisibility() =
      _TogglePassphraseVisibility;

  const factory DecryptionEvent.decryptAndReveal() = _DecryptAndReveal;
  const factory DecryptionEvent.retryDecryption() = _RetryDecryption;
  const factory DecryptionEvent.resetForm() = _ResetForm;

  const factory DecryptionEvent.routeConsumed() = _RouteConsumed;
}
