import 'package:flutter/material.dart';

import '../../../core/widgets/icon_elevated_button.dart';

class FacebookSignInButton extends StatelessWidget {
  const FacebookSignInButton({super.key});

  void _signInWithFacebook(BuildContext context) {
    // TODO ADD THE EVENT HERE!
  }

  @override
  Widget build(BuildContext context) {
    return IconElevatedButton(
      value: 'Facebook',
      onPress: () => _signInWithFacebook(context),
    );
  }
}
