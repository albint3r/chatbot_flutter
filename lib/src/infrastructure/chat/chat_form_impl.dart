import 'package:injectable/injectable.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/chat/i_chat_form.dart';

@Injectable(as: IChatForm)
class ChatFormImpl implements IChatForm {
  final chatControl = FormControl<String>(
    validators: [Validators.required],
  );

  late final FormGroup _form = FormGroup({
    'chat': chatControl,
  });

  @override
  FormGroup get form => _form;
}
