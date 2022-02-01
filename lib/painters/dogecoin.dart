import 'package:flutter/material.dart';

class DogeCoinIconPainter extends CustomPainter {
  late Paint brush;
  late Size size;
  late Canvas canvas;
  @override
  void paint(Canvas canvas, Size size) {
    double stripWidthRatio = 0.275;
    this.size = size;
    this.canvas = canvas;
    brush = Paint()
      ..color = const Color.fromRGBO(194, 166, 51, 1)
      ..style = PaintingStyle.fill;
    drawBackground();
    drawD();

    Offset center = Offset(size.width * 0.55, size.height * 0.5);
    Offset stripStart =
        Offset(center.dx - size.width * stripWidthRatio, center.dy);
    canvas.drawLine(
        stripStart,
        center,
        brush
          ..color = Colors.white
          ..strokeWidth = 4);
  }

  drawBackground() {
    Offset center = Offset(size.width * 0.5, size.height * 0.5);
    double radius = size.width * 0.5;
    canvas.drawCircle(center, radius, brush);
  }

  drawD() {
    TextSpan span = TextSpan(
        style: TextStyle(
            fontSize: size.height * 0.8,
            color: Colors.white,
            fontWeight: FontWeight.w700),
        text: 'D');
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.height * 0.275, size.height * 0.05));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
