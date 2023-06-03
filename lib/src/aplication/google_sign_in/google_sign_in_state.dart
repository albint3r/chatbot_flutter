part of 'google_sign_in_bloc.dart';

@freezed
class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState({
    required bool isUser,
  }) = _GoogleSignInState;

  factory GoogleSignInState.initial() => const GoogleSignInState(
        isUser: false,
      );
}
