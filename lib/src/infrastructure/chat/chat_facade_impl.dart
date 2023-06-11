import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chat/i_chat_facade.dart';
import '../../domain/chat/i_chat_form.dart';

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
}
