import 'package:flutter/material.dart';
import 'dart:math';

class BinanceCoinIconBackgroundPainter extends CustomPainter {
  late Size iconSize;
  @override
  void paint(Canvas canvas, Size size) {
    iconSize = size;
    double overallOffsetRatio = 0.225;
    const Color iconBackgroundColor = Color.fromRGBO(243, 186, 44, 1);
    //draw the background
    Paint brush = Paint();
    brush.color = iconBackgroundColor;
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.5), size.width * 0.5, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
