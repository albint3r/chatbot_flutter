import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chat/enum_message_from_type.dart';
import '../../domain/chat/i_chat_facade.dart';
import '../../domain/chat/i_chat_form.dart';
import '../../domain/chat/message.dart';

@Injectable(as: IChatFacade)
class ChatFacadeImpl implements IChatFacade {
  ChatFacadeImpl({
    required this.chatForm,
  });

  final IChatForm chatForm;

  @override
  FormGroup get form => chatForm.form;

  /// Is the Name Controller of the Chat Field.
  @override
  String get chatControlName => form.rawValue.keys.first;

  void _resetTextField() => form.reset();

  String get _chatTextFieldValue =>
      form.control(chatControlName).value as String;

  @override
  List<Message> startChat() {
    const String greetingMessage = 'Hola, ¿Cómo estás? ¿En qué puedo ayudarte?';
    return [
      Message(
        text: greetingMessage,
        messageFromType: MessageFromType.assistant,
      )
    ];
  }

  @override
  List<Message> addNewUserMessage({
    required List<Message> chatMessages,
  }) {
    final String userMessage = _chatTextFieldValue;
    final List<Message> newChatMessages = List.from(chatMessages);
    newChatMessages.add(
      Message(
        text: userMessage,
        messageFromType: MessageFromType.user,
      ),
    );
    _resetTextField();
    return newChatMessages;
  }
}
