import 'package:flutter/material.dart';

class IconElevatedButton extends StatelessWidget {
  const IconElevatedButton({
    required this.value,
    required this.onPress,
    this.icon,
    this.color,
    this.fontColor,
    super.key,
  });

  final String value;
  final void Function()? onPress;
  final IconData? icon;
  final Color? color;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final fixedSize = MaterialStatePropertyAll(
      Size(
        size.width * .40,
        size.height * .05,
      ),
    );
    final _color = MaterialStatePropertyAll(color);
    return ElevatedButton(
      style: theme.elevatedButtonTheme.style?.copyWith(
        backgroundColor: _color,
        fixedSize: fixedSize,
      ),
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon),
          Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: fontColor ?? theme.colorScheme.shadow,
            ),
          ),
        ],
      ),
    );
  }
}
