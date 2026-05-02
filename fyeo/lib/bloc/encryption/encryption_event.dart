part of 'encryption_bloc.dart';

@freezed
class EncryptionEvent with _$EncryptionEvent {
  // ── Form inputs ──────────────────────────────────────────
  const factory EncryptionEvent.updateIntensity(double value) =
      _UpdateIntensity;
  const factory EncryptionEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
  const factory EncryptionEvent.updatePassword(String password) =
      _UpdatePassword;

  // ── Form submission ──────────────────────────────────────
  const factory EncryptionEvent.startEncryption() = _StartEncryption;
  const factory EncryptionEvent.retryEncryption() = _RetryEncryption;

  // ── Lifecycle ────────────────────────────────────────────
  const factory EncryptionEvent.encryptionCancelled() = _EncryptionCancelled;
  const factory EncryptionEvent.resetForm() = _ResetForm;

  // ── Route lifecycle ──────────────────────────────────────
  // NavigateToSuccess removed — router reads pendingRoute from state
  const factory EncryptionEvent.routeConsumed() = _RouteConsumed;
}
