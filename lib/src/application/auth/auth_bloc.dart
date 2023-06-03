import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../injectables.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    IAuthFacade facade,
  ) : super(AuthState.initial()) {
    on<_AuthEventGoogleSingIn>((event, emit) async {
      await facade.signInWithGoogle();
      emit(
        state.copyWith(
          user: facade.currentUser,
        ),
      );
    });
    on<_AuthEventSignOut>((event, emit) async {
      await facade.signOut();
      emit(
        state.copyWith(
          user: facade.currentUser,
        ),
      );
    });
  }
}
