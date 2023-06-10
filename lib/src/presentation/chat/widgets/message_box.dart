import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key,
    this.isUserMsg = false,
  });

  final bool isUserMsg;

  TextAlign get _textAlign => isUserMsg ? TextAlign.right : TextAlign.left;

  BoxDecoration _boxDecoration(ThemeData theme) {
    final color = theme.colorScheme;
    return BoxDecoration(
      color: isUserMsg ? color.onSecondary : color.secondaryContainer,
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    );
  }

  EdgeInsets _getPadding(double width) {
    const double widthPercentage = .10;
    const double topPadding = 15;
    if (isUserMsg) {
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
            'I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set? I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
            textAlign: _textAlign,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
