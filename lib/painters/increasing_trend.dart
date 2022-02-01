import '../util/data/trend_icon.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'package:flutter/material.dart';

class IncreasingTrendIconPainter extends CustomPainter {
  final Color color;

  IncreasingTrendIconPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    List<Offset> offsets = TrendIconOffsetUtil(size).increasing();
    Offset center = Offset(size.width / 2, size.height / 2);
    Paint brush = Paint()
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..shader = ui.Gradient.radial(
          ui.Offset(0, size.height),
          sqrt(pow(size.width, 2) + pow(size.height, 2)),
          [
            Colors.white,
            color,
          ],
          null,
          TileMode.clamp);
    Path graphPath = Path();
    graphPath.moveTo(offsets[0].dx, offsets[0].dy);
    for (int pointIndex = 1; pointIndex < offsets.length; pointIndex++) {
      graphPath.lineTo(offsets[pointIndex].dx, offsets[pointIndex].dy);
    }
    canvas.drawPath(graphPath, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      this != oldDelegate;
}
