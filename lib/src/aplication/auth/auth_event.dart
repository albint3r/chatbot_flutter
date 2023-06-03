part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.googleSingIn() = _AuthEventGoogleSingIn;
  const factory AuthEvent.signOut()= _AuthEventSignOut;
}
