import 'dart:math';

import 'package:flutter/material.dart';

class StockGraphPainter extends CustomPainter {
  double maxlengthPerDayRatio = 0.3;
  double minActivePerDayRatio = 0.075;
  late double activeBarStrokeWidth;
  late Paint brush;
  late Canvas canvas;
  late Size size;
  @override
  void paint(Canvas canvas, Size size) {
    double numofBars = 11;
    activeBarStrokeWidth = size.width * 0.05;
    this.canvas = canvas;
    this.size = size;
    brush = Paint()..style = PaintingStyle.fill;
    double paddingRatio = 1 / numofBars;
    double divideSpaceRatio = 1 - paddingRatio;
    List<double> horizontalOffsetRatios = [
      for (var i = 1; i <= numofBars; i++)
        (i * divideSpaceRatio / numofBars + paddingRatio * 0.5)
    ];
    double previousdayEndRatio = 0;
    for (var offsetRatio in horizontalOffsetRatios) {
      List<double> drawableRandomOffsets = getOneInstance();
      if (drawableRandomOffsets[3] >= previousdayEndRatio) {
        drawGainBar(drawableRandomOffsets, offsetRatio);
      } else {
        drawLossBar(drawableRandomOffsets, offsetRatio);
      }
      previousdayEndRatio = drawableRandomOffsets[3];
    }
  }

  double randomDoubleBetween(double start, double end) {
    Random source = Random();
    return source.nextDouble() * (end - start) + start;
  }

  drawLossBar(List<double> offsets, double horizontalOffsetRatio) {
    drawBar(
        offsets, horizontalOffsetRatio, const Color.fromRGBO(238, 95, 95, 1));
  }

  drawGainBar(List<double> offsets, double horizontalOffsetRatio) {
    drawBar(
        offsets, horizontalOffsetRatio, const Color.fromRGBO(111, 191, 191, 1));
  }

  drawBar(List<double> offsets, double horizontalOffsetRatio, Color color) {
    Offset dayStartOffset = Offset(
        size.width * horizontalOffsetRatio, size.height * (1 - offsets[0]));
    Offset dayEndOffset = Offset(
        size.width * horizontalOffsetRatio, size.height * (1 - offsets[3]));
    canvas.drawLine(
        dayStartOffset,
        dayEndOffset,
        brush
          ..strokeWidth = 2
          ..color = color);
    Offset activeDayStart = Offset(
        size.width * horizontalOffsetRatio, size.height * (1 - offsets[1]));
    Offset activeDayEnd = Offset(
        size.width * horizontalOffsetRatio, size.height * (1 - offsets[2]));
    canvas.drawLine(
        activeDayStart,
        activeDayEnd,
        brush
          ..strokeCap = StrokeCap.round
          ..strokeWidth = activeBarStrokeWidth
          ..color = color);
  }

  List<double> getOneInstance() {
    double dayEndRatio = randomDoubleBetween(maxlengthPerDayRatio, 1);
    double dayLengthRatio =
        randomDoubleBetween(minActivePerDayRatio, maxlengthPerDayRatio);
    double dayStartRatio = dayEndRatio - dayLengthRatio;
    double activeDayEndRatio =
        randomDoubleBetween(dayStartRatio + minActivePerDayRatio, dayEndRatio);
    double activeDayStartRatio = randomDoubleBetween(
        dayStartRatio, activeDayEndRatio - minActivePerDayRatio);
    return [dayStartRatio, activeDayStartRatio, activeDayEndRatio, dayEndRatio];
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
