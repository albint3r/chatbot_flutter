import 'package:flutter/material.dart';

import '../../core/widgets/app_close_bar.dart';
import 'chat_container.dart';
import 'chat_text_field.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;



class BodyChat extends StatelessWidget {
  const BodyChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            AppCloseBar(),
            Expanded(
              child: ChatContainer(),
            ),
            ChatTextField(),
          ],
        ),
      ),
    );
  }
}
