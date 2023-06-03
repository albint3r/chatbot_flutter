import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/auth/auth_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Hello World'),
          ),
          TextButton(onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signOut());
          }, child: const Text('logout'))
        ],
      ),
    );
  }
}
