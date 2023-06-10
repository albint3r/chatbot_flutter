import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {
        // TODO IMPLEMENT SEND MESSAGE HERE!
      },
      child: Container(
        decoration: _boxDecoration(colorScheme),
        width: 50,
        height: 50,
        child: Icon(
          Icons.send,
          color: colorScheme.onSecondary,
        ),
      ),
    );
  }
}
