import 'package:flutter/material.dart';

class TetherIconPainter extends CustomPainter {
  late Canvas canvas;
  late Size size;
  late Paint brush;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    this.canvas = canvas;
    this.size = size;
    brush = Paint();
    drawT();
  }

  void drawT() {
    TextSpan span = TextSpan(
        style: TextStyle(
            fontSize: size.height,
            color: Colors.white,
            fontWeight: FontWeight.w900),
        text: 'T');
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, const Offset(0, 0));
    // actualbarHeight= size.height - tp.height
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
