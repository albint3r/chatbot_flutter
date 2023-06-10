import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injectables.dart';
import '../../application/chat/chat_bloc.dart';
import 'widgets/body_chat.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatBloc>()
        ..add(
          const ChatEvent.started(),
        ),
      child: const Scaffold(
        body: BodyChat(),
      ),
    );
  }
}
