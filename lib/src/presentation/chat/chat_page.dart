import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'widgets/body_chat.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyChat(),
    );
  }
}