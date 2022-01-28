import '/util/vector.dart';
import 'package:flutter/material.dart';

class CardanoIconPainter extends CustomPainter {
  late Size iconSize;
  late Canvas myCanvas;
  late Paint brush;
  late VectorUtil vectorUtil;
  final double radiusDecelerationRatio = 0.035;
  final initialRadiusChangeRatio = 0.2;
  @override
  void paint(Canvas canvas, Size size) {
    iconSize = size;
    myCanvas = canvas;
    vectorUtil = VectorUtil(size);
    brush = Paint();
    brush.style = PaintingStyle.fill;
    brush.strokeWidth = 2.5;
    drawBackground();
  }

  drawBackground() {
    const Color backgroundColor = Color.fromRGBO(16, 29, 45, 1);
    brush.color = backgroundColor;

    Offset center = Offset(iconSize.width * 0.5, iconSize.height * 0.5);

    myCanvas.drawCircle(center, iconSize.width * 0.5, brush);
  }

  drawPointyTopHexagon(double radius) {
    Offset zeroDegreesOffset =
        Offset(iconSize.width * 0.5, iconSize.height * 0.5 - radius);
    //Offset
  }

  drawFlatTopHexagon(double radius) {}

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
