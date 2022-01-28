import 'package:flutter/material.dart';
import 'dart:math';

class BinanceCoinIconPainter extends CustomPainter {
  late Size iconSize;
  @override
  void paint(Canvas canvas, Size size) {
    iconSize = size;
    double overallOffsetRatio = 0.225;
    const Color iconBackgroundColor = Color.fromRGBO(243, 186, 44, 1);
    //draw the background
    Paint brush = Paint();
    brush.color = iconBackgroundColor;
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.5), size.width * 0.5, brush);
    //define the Offsets for the top arrow

    double angleAKP = atan((size.height * (0.5 - overallOffsetRatio)) /
        (size.width * (0.5 - overallOffsetRatio)));
    double angleKAP = pi - 2 * angleAKP;
    double halfKAP = angleKAP / 2;
    double howThickRatio = 0.1;
    double gapRatio =
        (((0.5 - overallOffsetRatio) - (3 * howThickRatio * cos(angleAKP))) *
                0.5) /
            cos(angleAKP);
    double thickness = size.width * howThickRatio;
    double gap = size.width * gapRatio;
    double lengthAB = thickness * sqrt(2 - 2 * cos(pi - 2 * halfKAP));
    Offset A = Offset(size.width * 0.5, size.height * overallOffsetRatio);
    Offset B = Offset(A.dx, A.dy + lengthAB);
    Offset K = Offset(size.width * overallOffsetRatio, size.height * 0.5);
    Offset H = Offset(
        K.dx + thickness * cos(angleAKP), K.dy - thickness * sin(angleAKP));
    double angleLHE = atan(gap / thickness);
    Offset C = Offset(H.dx + gap * cos(pi / 2 - angleLHE),
        H.dy - gap * sin(pi / 2 - angleLHE));
    Offset L = Offset(K.dx + 2 * thickness * cos(angleAKP), K.dy);
    Offset E = Offset(L.dx + gap * cos(pi / 2 - angleLHE),
        L.dy - gap * sin(pi / 2 - angleLHE));
    Offset M = Offset(L.dx + 2 * gap * cos(angleAKP), K.dy);
    //Offset F = Offset(A.dx, B.dy + gap * sqrt(2 - 2 * cos(pi - 2 * halfKAP)));
    Offset F = Offset(size.width * 0.5, H.dy);
    Offset D = reflectYAxis(C);
    Offset G = reflectYAxis(E);

    brush.color = Colors.white;
    canvas.drawPath(Path()..addPolygon([A, C, E, B, G, D], true), brush);
    //the diamonds in the middle
    Offset Q = reflectXAxis(H);
    canvas.drawPath(Path()..addPolygon([K, H, L, Q], true), brush);
    Offset N = reflectYAxis(M);
    Offset S = reflectXAxis(F);
    canvas.drawPath(Path()..addPolygon([M, F, N, S], true), brush);
    Offset J = reflectYAxis(H);
    Offset P = reflectYAxis(K);
    Offset O = reflectYAxis(L);
    Offset U = reflectXAxis(J);
    canvas.drawPath(Path()..addPolygon([J, P, U, O], true), brush);
    //the arrow in the bottom
    Offset V = reflectXAxis(C);
    Offset R = reflectXAxis(E);
    Offset W = reflectXAxis(B);
    Offset T = reflectXAxis(G);
    Offset X = reflectXAxis(D);
    Offset Y = reflectXAxis(A);
    canvas.drawPath(Path()..addPolygon([V, R, W, T, X, Y], true), brush);
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

  translate(Offset point, Offset delta) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianDelta = delta;
    //toCartesianCoordinate(delta);
    Offset cartesianTranslatedVector = Offset(
        cartesianPoint.dx + cartesianDelta.dx,
        cartesianPoint.dy + cartesianDelta.dy);
    return toDartCoordinate(cartesianTranslatedVector);
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
