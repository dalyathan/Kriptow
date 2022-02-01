import 'package:flutter/material.dart';

class TetherIconPainter extends CustomPainter {
  late Canvas canvas;
  late Size size;
  late Paint brush;
  double gapRatio = 0.1;
  double ellipseBottomheightRatio = 0.5625;
  double tBottomWidth = 0.2;
  double tHeadWidth = 0.4;
  @override
  void paint(Canvas canvas, Size size) {
    this.canvas = canvas;
    this.size = size;
    brush = Paint();
    drawBackground();
    drawEllipse();
    drawT();
  }

  void drawT() {
    TextSpan span = TextSpan(
        style: TextStyle(
            fontSize: size.height * 0.8,
            color: Colors.white,
            fontWeight: FontWeight.w900),
        text: 'T');
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.height * 0.25, size.height * 0.075));
  }

  void drawTHead() {}

  drawEllipse() {
    Rect rect = Rect.fromCenter(
        center: Offset(size.width * 0.51, size.height * 0.5),
        width: size.width * 0.6,
        height: 2 * size.height * (ellipseBottomheightRatio - 0.5));
    canvas.drawOval(
        rect,
        brush
          ..color = Colors.white
          ..strokeWidth = 1
          ..style = PaintingStyle.stroke);
  }

  void drawBackground() {
    Offset center = Offset(size.width * 0.5, size.height * 0.5);
    double radius = size.width * 0.5;
    canvas.drawCircle(
        center,
        radius,
        brush
          ..color = const Color.fromRGBO(83, 174, 148, 1)
          ..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
