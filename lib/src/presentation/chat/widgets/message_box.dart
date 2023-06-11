import 'package:flutter/material.dart';

import '../../../domain/chat/message.dart';

class MessageBox extends StatefulWidget {
  const MessageBox({
    super.key,
    required this.message,
  });

  final Message message;

  @override
  State<MessageBox> createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1500),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: _animationDirectionByMessageType,
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Offset get _animationDirectionByMessageType {
    if (widget.message.isFromUser) {
      return const Offset(-7, 0.0);
    } else {
      return const Offset(7, 0.0);
    }
  }

  TextAlign get _textAlign =>
      widget.message.isFromUser ? TextAlign.right : TextAlign.left;

  BoxDecoration _boxDecoration(ThemeData theme) {
    final color = theme.colorScheme;
    return BoxDecoration(
      color: widget.message.isFromUser
          ? color.onSecondary
          : color.secondaryContainer,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    );
  }

  EdgeInsets _getPadding(double width) {
    const double widthPercentage = .10;
    const double topPadding = 15;
    if (widget.message.isFromUser) {
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
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: _getPadding(width),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: width * .80,
          ),
          decoration: _boxDecoration(theme),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.message.text,
              textAlign: _textAlign,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
