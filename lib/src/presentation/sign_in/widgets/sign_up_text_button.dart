import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpTextButton extends StatelessWidget {
  const SignUpTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don’t have account?",
            style: theme.textTheme.displaySmall,
          ),
          const Gap(20),
          TextButton(
            onPressed: () {
              // TODO CREATE A NAVIGATION ROUTE TO THE CREATE ACCOUNT PAGE.
              // This page don't exist at the moment.
            },
            child: const Text(
              "Sign up",
            ),
          ),
        ],
      ),
    );
  }
}
