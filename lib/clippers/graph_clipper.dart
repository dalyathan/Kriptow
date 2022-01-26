import 'package:flutter/material.dart';
import 'dart:math';

class GraphClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size.width.toString());
    print(size.height.toString());

    Path path = Path();
    Random random = Random();

    double startOffsetRatio = 0.5 +
        random.nextDouble() * 0.5; //between 0.5(inclusive) and 1 (exclusive)
    double endOffsetRatio =
        random.nextDouble() * 0.5; //between 0(inclusive) and 0.5 (exclusive)

    Offset A = Offset(0, size.height * startOffsetRatio);
    Offset Z = Offset(size.width, size.height * endOffsetRatio);

    path.moveTo(A.dx, A.dy);
    path.lineTo(Z.dx, Z.dy);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
