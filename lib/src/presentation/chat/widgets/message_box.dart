import 'package:flutter/material.dart';

import '../../../domain/chat/message.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    required this.message,
  });

  final Message message;

  TextAlign get _textAlign =>
      message.isFromUser ? TextAlign.right : TextAlign.left;

  BoxDecoration _boxDecoration(ThemeData theme) {
    final color = theme.colorScheme;
    return BoxDecoration(
      color: message.isFromUser ? color.onSecondary : color.secondaryContainer,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    );
  }

  EdgeInsets _getPadding(double width) {
    const double widthPercentage = .10;
    const double topPadding = 15;
    if (message.isFromUser) {
      return EdgeInsets.only(
        left: width * widthPercentage,
        top: topPadding,
      );
    }
    return EdgeInsets.only(
      right: width * widthPercentage,
      top: topPadding,
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Padding(
      padding: _getPadding(width),
      child: Container(
        width: width * .80,
        decoration: _boxDecoration(theme),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            message.text,
            textAlign: _textAlign,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
