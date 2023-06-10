import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class AppCloseBar extends StatelessWidget {
  const AppCloseBar({
    this.img,
    this.icon,
    this.onPressed,
    super.key,
  });

  final IconData? icon;
  final ImageProvider<Object>? img;
  final void Function()? onPressed;

  void _close(BuildContext context) => context.router.pop();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: img ?? Assets.img.perfectDealsLogo.provider(),
            radius: 16,
          ),
          IconButton(
            onPressed: () => onPressed ?? _close(context),
            icon: Icon(
              icon ?? Icons.close,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
