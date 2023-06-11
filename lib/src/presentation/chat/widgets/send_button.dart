import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/chat/chat_bloc.dart';

class SendButton extends StatelessWidget {
  const SendButton({
    super.key,
  });

  BoxDecoration _boxDecoration(ColorScheme colorScheme) => BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        color: colorScheme.secondary,
      );

  void _sendMessage(BuildContext context) => context.read<ChatBloc>().add(
        const ChatEvent.sendMessage(),
      );

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ChatBloc>();
    final state = bloc.state;
    final colorScheme = Theme.of(context).colorScheme;
    const double square = 50;
    return ReactiveFormConsumer(
      builder: (context, _, __) {
        return InkWell(
          onTap: !state.form!.valid ? null : () => _sendMessage(context),
          child: Container(
            decoration: _boxDecoration(
              colorScheme,
            ),
            width: square,
            height: square,
            child: Icon(
              Icons.send,
              color: colorScheme.onSecondary,
            ),
          ),
        );
      },
    );
  }
}
