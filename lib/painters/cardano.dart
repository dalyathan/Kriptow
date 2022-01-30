import '/util/vector.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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

    brush.color = Colors.white;
    //brush.style = PaintingStyle.stroke;
    brush.strokeWidth = 1;

    double radius1 = size.width * 0.085;
    drawFlatTopHexagon(radius1, radius1 * 0.45);

    double radius2 = radius1 * 2;
    drawPointyTopHexagon(radius2, radius2 * 0.1);

    double radius3 = radius2 * 1.35;
    drawFlatTopHexagon(radius3, radius3 * 0.075);

    double radius4 = radius3 * 1.2;
    drawPointyTopHexagon(radius4, radius4 * 0.075);

    double radius5 = radius4 * 1.1;
    drawFlatTopHexagon(radius5, radius5 * 0.05);
  }

  drawBackground() {
    const Color backgroundColor = Color.fromRGBO(16, 29, 45, 1);
    brush.color = backgroundColor;

    Offset center = Offset(iconSize.width * 0.5, iconSize.height * 0.5);

    myCanvas.drawCircle(center, iconSize.width * 0.5, brush);
  }

  List<Offset> pointyHexagonOffsets(double radius) {
    Offset degrees0 =
        Offset(iconSize.width * 0.5, iconSize.height * 0.5 - radius);
    Offset degrees60 = vectorUtil.rotate(degrees0, pi / 3);
    Offset degrees120 = vectorUtil.rotate(degrees0, 2 * pi / 3);
    Offset degrees180 = vectorUtil.rotate(degrees0, pi);
    Offset degrees240 = vectorUtil.rotate(degrees0, 4 * pi / 3);
    Offset degrees300 = vectorUtil.rotate(degrees0, 5 * pi / 3);
    return [
      degrees0,
      degrees60,
      degrees120,
      degrees180,
      degrees240,
      degrees300
    ];
  }

  drawPointyTopHexagon(double hexagonRadius, double circleRadius) {
    for (Offset center in pointyHexagonOffsets(hexagonRadius)) {
      myCanvas.drawCircle(center, circleRadius, brush);
    }
  }

  drawFlatTopHexagon(double hexagonRadius, double circleRadius) {
    for (Offset center in vectorUtil.rotatePolygon(
        pointyHexagonOffsets(hexagonRadius), pi / 6)) {
      myCanvas.drawCircle(center, circleRadius, brush);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
