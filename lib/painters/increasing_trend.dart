import 'package:flutter/material.dart';

class IncreasingTrendIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Offset A = Offset(0, size.height);
    Offset B = Offset(A.dx + size.width * 0.1, A.dy - size.height * 0.8);
    Offset topRight = Offset(size.width, 0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
