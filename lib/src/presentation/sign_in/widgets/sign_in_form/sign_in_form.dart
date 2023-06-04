import 'package:flutter/material.dart';

class SingInForm extends StatelessWidget {
  const SingInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          color: Colors.blueAccent,
          height: size.height * .55,
        ),
      ],
    );
  }
}
