import 'package:flutter/material.dart';

class CardanoIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint();
    brush.style = PaintingStyle.fill;
    brush.strokeWidth = 2.5;
    const Color backgroundColor = Color.fromRGBO(16, 29, 45, 1);
    brush.color = backgroundColor;

    Offset center = Offset(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, size.width * 0.5, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
