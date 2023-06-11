import 'package:chatbot/src/presentation/chat/widgets/send_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/chat/chat_bloc.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ChatBloc>();
    final state = bloc.state;
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    if (state.isLoading) return const CircularProgressIndicator();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ReactiveForm(
        formGroup: state.form!,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              child: SizedBox(
                height: 60,
                width: size.width * .80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ReactiveTextField(
                    style: theme.textTheme.bodyMedium,
                    maxLines: 2,
                    formControlName: state.chatControlName,
                    // formControlName: state!.form!.rawValue!.keys![0],
                  ),
                ),
              ),
            ),
            const SendButton()
          ],
        ),
      ),
    );
  }
}
