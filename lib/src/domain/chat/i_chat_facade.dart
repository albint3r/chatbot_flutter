import 'package:reactive_forms/reactive_forms.dart';

import 'message.dart';

abstract class IChatFacade {
  FormGroup get form;

  String get chatControlName;

  List<Message> startChat();

  List<Message> addNewUserMessage({
    required List<Message> chatMessages,
  });
}
