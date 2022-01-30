import '/util/vector.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomeIconPainter extends CustomPainter {
  final Color foreground;
  final Color background;
  late Paint brush;
  late Canvas canvas;
  late VectorUtil vectorUtil;
  late double clipRadiusRatio;
  late Size size;

  HomeIconPainter(this.foreground, this.background);
  @override
  void paint(Canvas canvas, Size size) {
    vectorUtil = VectorUtil(size);
    this.canvas = canvas;
    this.size = size;
    brush = Paint()
      ..color = foreground
      ..strokeWidth = 2.5
      ..style = PaintingStyle.fill;
    clipRadiusRatio = 0.05;
    Path pentagonPath = getPentagonPath();
    Offset center = Offset(size.width * 0.5, size.height * 0.5);
    Path circularPath = Path()
      ..addOval(Rect.fromCircle(
          center: center, radius: size.width * (0.5 - clipRadiusRatio)));
    canvas.drawPath(
        Path.combine(PathOperation.intersect, pentagonPath, circularPath),
        brush);
    drawStrip();
  }

  Path getPentagonPath() {
    double pentagonRadius = size.width * 0.5;
    double pentagonInnerAngle = -2 * pi / 5;
    Offset degree0 = Offset(pentagonRadius, 0);
    Offset degree72 = vectorUtil.rotate(degree0, pentagonInnerAngle);
    Offset degree144 = vectorUtil.rotate(degree72, pentagonInnerAngle);
    Offset degree216 = vectorUtil.rotate(degree144, pentagonInnerAngle);
    Offset degree288 = vectorUtil.rotate(degree216, pentagonInnerAngle);
    return Path()
      ..addPolygon([degree0, degree72, degree144, degree216, degree288], true);
  }

  void drawStrip() {
    double stripOffsetRatio = 0.725;
    double stripeLengthRatio = 0.175;
    Offset topOffset = Offset(
        size.width * 0.5, size.height * (stripOffsetRatio - stripeLengthRatio));
    Offset bottomOffset = Offset(topOffset.dx, size.height * stripOffsetRatio);
    canvas.drawLine(
        topOffset,
        bottomOffset,
        brush
          ..strokeWidth = 1.75
          ..color = background
          ..strokeCap = StrokeCap.round);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
