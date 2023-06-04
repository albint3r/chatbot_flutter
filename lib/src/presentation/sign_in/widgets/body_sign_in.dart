import 'package:chatbot/src/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:chatbot/src/presentation/sign_in/widgets/sign_in_with_google_or_facebook.dart';
import 'package:chatbot/src/presentation/sign_in/widgets/sign_up_text_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(
          child: SingInForm(),
        ),
        Gap(20),
        SignInWithGoogleOrFacebook(),
        Gap(20),
        SignUpTextButton(),
        Gap(10),
      ],
    );
  }
}
