import 'dart:math';

import 'package:flutter/material.dart';

class StockGraphPainter extends CustomPainter {
  double maxlengthPerDayRatio = 0.2;
  double minActivePerDayRatio = 0.1;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  double randomDoubleBetween(double start, double end) {
    Random source = Random();
    return source.nextDouble() * (end - start) + start;
  }

  double getOneInstance() {
    double dayEndRatio =
        randomDoubleBetween(minActivePerDayRatio, 1 - maxlengthPerDayRatio);
    double dayLengthRatio = randomDoubleBetween(0, maxlengthPerDayRatio);
    double dayStartRatio = dayEndRatio - dayLengthRatio;
    double activeDayEndRatio =
        randomDoubleBetween(dayStartRatio + minActivePerDayRatio, dayEndRatio);
    double activeDayStartRatio = randomDoubleBetween(
        dayStartRatio + minActivePerDayRatio, activeDayEndRatio);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
