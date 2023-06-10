part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    FormGroup? form,
  }) = _Initial;

  factory ChatState.initial() => const ChatState(
        isLoading: true,
      );
}
