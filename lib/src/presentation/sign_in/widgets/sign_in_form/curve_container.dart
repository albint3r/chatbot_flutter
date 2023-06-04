import 'package:flutter/material.dart';

class CurveContainer extends StatelessWidget {
  const CurveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipPath(
      clipper: BottomCurveClipper(),
      child: Container(
        color: Colors.blueAccent,
        height: size.height * .55,
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 4,
      size.height - 40,
      size.width / 2,
      size.height - 20,
    );
    path.quadraticBezierTo(
      3 / 4 * size.width,
      size.height,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
