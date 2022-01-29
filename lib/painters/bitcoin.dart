import 'dart:ui';

import 'package:flutter/material.dart';

class BitcoinIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    const Color color = Color.fromRGBO(247, 148, 29, 1);
    Paint brush = Paint();
    brush.color = color;
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;
    double barsRatio = 0.15;
    TextSpan span = const TextSpan(style: TextStyle(color: color), text: 'B');
    TextPainter tp = TextPainter(text: span, textAlign: TextAlign.left);
    tp.layout();
    tp.paint(canvas, Offset(0, size.height * barsRatio));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
