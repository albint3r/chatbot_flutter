part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    FormGroup? form,
    String? chatControlName,
    required List<Message> chatMessages,
  }) = _Initial;

  factory ChatState.initial() => const ChatState(
        isLoading: true,
        chatMessages: <Message>[],
      );
}
