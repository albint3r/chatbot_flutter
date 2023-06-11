import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/chat/chat_bloc.dart';
import '../../../domain/chat/message.dart';
import 'message_box.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  MainAxisAlignment _getContainerLocationAxisLocation(Message message) {
    if (message.isFromUser) {
      return MainAxisAlignment.end;
    }
    return MainAxisAlignment.start;
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ChatBloc>();
    final state = bloc.state;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: state.chatMessages.length,
          itemBuilder: (context, i) {
            final message = state.chatMessages[i];
            // This Row is useful to manage the Container location
            // Inside the ListBuilder the container get all the width possible
            // I We only want that the with is the length of the text.
            return Row(
              mainAxisAlignment: _getContainerLocationAxisLocation(
                message,
              ),
              children: [
                MessageBox(
                  message: message,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
