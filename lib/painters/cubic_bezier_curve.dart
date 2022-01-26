import 'package:flutter/material.dart';

class CubicBezierCurveIconPainter extends CustomPainter {
  final Color brushColor;

  CubicBezierCurveIconPainter(this.brushColor);
  @override
  void paint(Canvas canvas, Size size) {
    double controlPointsHorizontalOffsetRatio = 0.5;
    double controlPointsVerticalOffsetRatio = 0;
    double bezierCurveOffsetRatio = 0.25;

    Offset startBezier =
        Offset(size.width * bezierCurveOffsetRatio, size.height * 0.5);
    Offset endBezier =
        Offset(size.width * (1 - bezierCurveOffsetRatio), size.height * 0.5);
    Offset controlPoint1 = Offset(
        size.width * controlPointsHorizontalOffsetRatio,
        size.height * controlPointsVerticalOffsetRatio);
    Offset controlPoint2 = Offset(
        size.width * (1 - controlPointsHorizontalOffsetRatio),
        size.height * (1 - controlPointsVerticalOffsetRatio));
    Offset bottomLeftCorner = Offset(0, size.height);
    Offset topRightCorner = Offset(size.width, 0);

    Paint brush = Paint();
    brush.color = brushColor;
    brush.style = PaintingStyle.stroke;
    brush.strokeWidth = 2;

    Path cubicPath = Path();
    cubicPath.moveTo(startBezier.dx, startBezier.dy);
    cubicPath.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endBezier.dx, endBezier.dy);
    cubicPath.moveTo(bottomLeftCorner.dx, bottomLeftCorner.dy);
    cubicPath.lineTo(startBezier.dx, startBezier.dy);
    cubicPath.moveTo(endBezier.dx, endBezier.dy);
    cubicPath.lineTo(topRightCorner.dx, topRightCorner.dy);

    canvas.drawPath(cubicPath, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
