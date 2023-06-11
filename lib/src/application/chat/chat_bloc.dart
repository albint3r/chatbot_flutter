import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chat/i_chat_facade.dart';
import '../../domain/chat/message.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required IChatFacade facade,
  }) : super(ChatState.initial()) {
    final startChatMessages = facade.startChat();
    on<_ChatEventStarted>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          form: facade.form,
          chatControlName: facade.chatControlName,
          chatMessages: startChatMessages,
        ),
      );
    });
    on<_ChatEventSendMessage>((event, emit) {
      final updatedChatMessages = facade.addNewUserMessage(
        chatMessages: state.chatMessages,
      );
      emit(
        state.copyWith(
          chatMessages: updatedChatMessages,
        ),
      );
    });
  }
}
