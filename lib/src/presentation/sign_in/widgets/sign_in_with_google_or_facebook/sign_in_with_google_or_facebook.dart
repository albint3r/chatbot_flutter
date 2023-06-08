import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:gap/gap.dart';

import 'facebook_sign_in_button.dart';
import 'google_sign_in_button.dart';

class SignInWithGoogleOrFacebook extends StatelessWidget {
  const SignInWithGoogleOrFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          Translations.of(context).connectWith,
          style: theme.textTheme.displaySmall,
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            GoogleSignInButton(),
            FacebookSignInButton(),
          ],
        ),
      ],
    );
  }
}
