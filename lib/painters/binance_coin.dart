import 'package:flutter/material.dart';
import 'dart:math';

class BinanceCoinIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double overallOffsetRatio = 0.25;
    double gapRatio = 0.1;
    double howThickRatio = 0.15;
    const Color iconBackgroundColor = Color.fromRGBO(243, 186, 44, 1);
    double thickness = size.width * howThickRatio;
    double gap = size.width * gapRatio;
    //draw the background
    Paint brush = Paint();
    brush.color = iconBackgroundColor;
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.5), size.width * 0.5, brush);
    //define the Offsets

    Offset A = Offset(size.width * 0.5, size.height * overallOffsetRatio);
    Offset B = Offset(A.dx, A.dy + thickness * sqrt(2));
    Offset K = Offset(size.width * overallOffsetRatio, size.height * 0.5);
    Offset H = Offset(K.dx + thickness / sqrt(2), K.dy - thickness / sqrt(2));
    double angleLHE = atan(gap / thickness);
    Offset C = Offset(H.dx + gap * cos(angleLHE), H.dy - gap * sin(angleLHE));
    Offset L = Offset(K.dx + thickness * sqrt(2), K.dy);
    Offset E = Offset(L.dx + gap * cos(pi / 2 - angleLHE),
        L.dy - gap * sin(pi / 2 - angleLHE));
    Offset M = Offset(L.dx + gap * sqrt(2), K.dy);
    Offset F = Offset(A.dx, B.dy + gap * sqrt(2));
    //the rest of the points can be obtained by reflecting through y=x, y=0 and x=0
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
