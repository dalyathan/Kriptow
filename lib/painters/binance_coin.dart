import 'package:flutter/material.dart';
import 'dart:math';

class BinanceCoinIconPainter extends CustomPainter {
  late Size iconSize;
  @override
  void paint(Canvas canvas, Size size) {
    iconSize = size;
    double overallOffsetRatio = 0.175;
    double gapRatio = 0.05;
    double howThickRatio = 0.1;
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
    Offset C = Offset(H.dx + gap * cos(pi / 2 - angleLHE),
        H.dy - gap * sin(pi / 2 - angleLHE));
    Offset L = Offset(K.dx + thickness * sqrt(2), K.dy);
    Offset E = Offset(L.dx + gap * cos(pi / 2 - angleLHE),
        L.dy - gap * sin(pi / 2 - angleLHE));
    Offset M = Offset(L.dx + gap * sqrt(2), K.dy);
    Offset F = Offset(A.dx, B.dy + gap * sqrt(2));
    Offset D = reflectYAxis(C);
    Offset G = reflectYAxis(E);

    Path topArrowPath = Path()..addPolygon([A, C, E, B, G, D], true);
    brush.color = Colors.white;
    canvas.drawPath(topArrowPath, brush);
    //the rest of the points can be obtained by reflecting through y=x, y=0 and x=0
  }

  reflectYAxis(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(-cartesianPoint.dx, cartesianPoint.dy);
    return toDartCoordinate(cartesianValue);
  }

  reflectXAxis(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(cartesianPoint.dx, -cartesianPoint.dy);
    return toDartCoordinate(cartesianValue);
  }

  reflectYEqualsX(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(cartesianPoint.dy, cartesianPoint.dx);
    return toDartCoordinate(cartesianValue);
  }

  toDartCoordinate(Offset cartesianPoint) => Offset(
      cartesianPoint.dx + iconSize.width * 0.5,
      iconSize.height * 0.5 - cartesianPoint.dy);

  toCartesianCoordinate(Offset dartianPoint) => Offset(
      dartianPoint.dx - iconSize.width * 0.5,
      iconSize.height * 0.5 - dartianPoint.dy);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
