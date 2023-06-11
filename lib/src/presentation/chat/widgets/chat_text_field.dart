import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/chat/chat_bloc.dart';
import 'send_button.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    super.key,
  });

  BoxDecoration _decoratedBox(ThemeData theme) {
    return BoxDecoration(
      color: theme.colorScheme.background,
      borderRadius: const BorderRadius.all(
        Radius.circular(
          30,
        ),
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.white,
          blurRadius: 10.0,
          spreadRadius: -8,
          offset: Offset(0, 6),
        ),
      ],
    );
  }

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
            Container(
              height: 75,
              width: size.width * .80,
              decoration: _decoratedBox(theme),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: ReactiveTextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                  style: theme.textTheme.bodyMedium,
                  maxLines: 2,
                  formControlName: state.chatControlName,
                  // formControlName: state!.form!.rawValue!.keys![0],
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
