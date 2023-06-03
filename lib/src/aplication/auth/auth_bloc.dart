import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
      print('estoy aqui');
      print('estoy aqui');
      print('estoy aqui');
      print('estoy aqui');
      print('estoy aqui');
    });
  }
}
