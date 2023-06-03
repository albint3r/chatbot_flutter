part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    User? user,
    required bool isLoading,
    required bool isAuthenticated,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() {
    final user = getIt<IAuthFacade>();
    return AuthState(
      user: user.currentUser,
      isLoading: false,
      isAuthenticated: false,
    );
  }
}
