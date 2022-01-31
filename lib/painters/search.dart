import 'package:flutter/material.dart';
import 'dart:math';

class SearchIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint()
      ..color = const Color.fromRGBO(39, 35, 67, 1)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    double circleOffsetratio = 0.025;
    double radius = size.width * (0.5 - circleOffsetratio);
    Offset center = Offset(radius, radius);
    canvas.drawCircle(center, radius, brush);
    Offset handleTop =
        Offset(center.dx + radius / sqrt(2), center.dy + radius / sqrt(2));
    Offset handleBottom = Offset(size.width, size.height);
    canvas.drawLine(handleTop, handleBottom, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
