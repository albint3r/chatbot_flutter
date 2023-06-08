import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../core/router/router.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signOut());
              },
              child: const Text('logout'),
            ),
            const Gap(20),
            TextButton(
              onPressed: () {
                context.router.push(
                  const ChatRoute(),
                );
              },
              child: const Text('Go to Chat'),
            )
          ],
        ),
      ),
    );
  }
}
