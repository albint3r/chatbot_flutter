import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/chat/chat_bloc.dart';
import 'message_box.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ChatBloc>();
    final state = bloc.state;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          itemCount: state.chatMessages.length,
          itemBuilder: (context, i) {
            return MessageBox(
              message: state.chatMessages[i],
            );
          },
        ),
      ),
    );
  }
}
