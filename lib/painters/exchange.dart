import 'package:flutter/material.dart';
import 'dart:math';

class ExchangeIconPainter extends CustomPainter {
  final Color foregroundColor;
  final Color backgroundColor;
  late Canvas canvas;
  late Size size;
  late Paint brush;
  late double horizontalArrowPaddingRatio;
  late double verticalArrowPaddingRatio;
  late double arrowHeadLengthRatio;
  late double arrowHeadSlope;

  ExchangeIconPainter(this.foregroundColor, this.backgroundColor);
  @override
  void paint(Canvas canvas, Size size) {
    brush = Paint()
      ..color = foregroundColor
      ..strokeWidth = 1.75
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.fill;
    this.size = size;
    this.canvas = canvas;
    horizontalArrowPaddingRatio = 0.2;
    verticalArrowPaddingRatio = 0.4;
    arrowHeadLengthRatio = 0.25;
    arrowHeadSlope = 0.7;
    drawBackground();
    drawLeftArrow();
    drawRightArrow();
  }

  void drawBackground() {
    double borderRadiusRatio = 0.25;
    Offset center = Offset(size.width * 0.5, size.height * 0.5);
    canvas.drawRRect(
        RRect.fromRectAndRadius(
            Rect.fromCenter(
                center: center, width: size.width, height: size.height),
            Radius.circular(size.width * borderRadiusRatio)),
        brush);
  }

  void drawLeftArrow() {
    Offset leftTip = Offset(size.width * horizontalArrowPaddingRatio,
        size.height * verticalArrowPaddingRatio);
    Offset rightTip =
        Offset(size.width * (1 - horizontalArrowPaddingRatio), leftTip.dy);
    Offset upperTip = Offset(
        leftTip.dx + acos(arrowHeadSlope) * size.width * arrowHeadLengthRatio,
        leftTip.dy - asin(arrowHeadSlope) * size.width * arrowHeadLengthRatio);
    canvas.drawLine(rightTip, leftTip, brush..color = backgroundColor);
    canvas.drawLine(upperTip, leftTip, brush..color = backgroundColor);
  }

  void drawRightArrow() {
    Offset leftTip = Offset(size.width * horizontalArrowPaddingRatio,
        size.height * (1 - verticalArrowPaddingRatio));
    Offset rightTip =
        Offset(size.width * (1 - horizontalArrowPaddingRatio), leftTip.dy);
    Offset lowerTip = Offset(
        rightTip.dx - acos(arrowHeadSlope) * size.width * arrowHeadLengthRatio,
        rightTip.dy + asin(arrowHeadSlope) * size.width * arrowHeadLengthRatio);
    canvas.drawLine(rightTip, leftTip, brush..color = backgroundColor);
    canvas.drawLine(lowerTip, rightTip, brush..color = backgroundColor);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
