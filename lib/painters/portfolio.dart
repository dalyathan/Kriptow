import 'package:flutter/material.dart';
import 'dart:math';

class PortfolioIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint();
    brush.color = const Color.fromRGBO(222, 222, 222, 1);
    brush.strokeWidth = 2.5;

    double leftBorderRadiusRatio = 0.25;
    double rightBorderRadiusRatio = 0.45;
    double lineRightEndOffset = 0.55;
    double offsetBetweenLineAndBorderRadius = 0.1;

    Offset A = Offset(
        size.width * leftBorderRadiusRatio,
        size.height *
            (leftBorderRadiusRatio + offsetBetweenLineAndBorderRadius));
    Offset B = Offset(size.width * lineRightEndOffset, A.dy);
    Offset C = Offset(size.width * (1 - leftBorderRadiusRatio * 0.6), A.dy);
    Offset D = Offset(size.width, A.dy);
    Offset E = Offset(C.dx, size.height - C.dy);
    Offset F = Offset(D.dx, size.height - D.dy);
    Offset topLeftCorner = const Offset(0, 0);
    Offset bottomRightCorner = Offset(size.width, size.height);

    Radius leftRadius = Radius.circular(size.width * leftBorderRadiusRatio);
    Radius rightRadius = Radius.circular(size.width * rightBorderRadiusRatio);

    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromPoints(topLeftCorner, bottomRightCorner),
            topLeft: leftRadius,
            bottomLeft: leftRadius,
            topRight: rightRadius,
            bottomRight: rightRadius),
        brush);

    brush.color = Colors.white;
    brush.style = PaintingStyle.stroke;

    canvas.drawLine(A, B, brush);
    canvas.drawLine(C, D, brush);
    canvas.drawLine(E, F, brush);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(C.dx, (C.dy + E.dy) / 2), radius: (E.dy - C.dy) / 2),
        pi / 2,
        pi,
        false,
        brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
