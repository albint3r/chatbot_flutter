import 'package:flutter/material.dart';

import 'message_box.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: const [
            MessageBox(),
            MessageBox(isUserMsg: true),
            MessageBox(),
            MessageBox(isUserMsg: true),
            MessageBox(isUserMsg: true),
            MessageBox(isUserMsg: true),
          ],
        ),
      ),
    );
  }
}
