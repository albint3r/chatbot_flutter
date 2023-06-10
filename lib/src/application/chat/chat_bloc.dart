import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chat/i_chat_facade.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required IChatFacade facade,
  }) : super(ChatState.initial()) {
    on<_ChatEventStarted>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          form: facade.form,
        ),
      );
    });
  }
}
