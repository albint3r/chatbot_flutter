import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'google_sign_in_event.dart';

part 'google_sign_in_state.dart';

part 'google_sign_in_bloc.freezed.dart';

@injectable
class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc() : super(GoogleSignInState.initial()) {
    on<GoogleSignInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
