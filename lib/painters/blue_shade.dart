import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math';

class BlueShadePainter extends CustomPainter {
  late Paint brush;
  late Canvas canvas;
  late Size size;
  late Offset center;

  @override
  void paint(Canvas canvas, Size size) {
    this.size = size;
    this.canvas = canvas;
    center = Offset(size.width / 2, size.height / 2);
    brush = Paint();
    brush.strokeWidth = 2.5;
    brush.color = const Color.fromRGBO(39, 35, 67, 1);
    brush.shader = ui.Gradient.radial(
        center,
        sqrt(pow(size.width, 2) + pow(size.height, 2)),
        [
          const Color.fromRGBO(39, 35, 67, 1),
          const Color.fromRGBO(175, 217, 219, 1),
        ],
        null,
        TileMode.mirror);
    canvas.drawRect(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      this != oldDelegate;
}
