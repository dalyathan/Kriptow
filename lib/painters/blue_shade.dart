import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math';

class BlueShadePainter extends CustomPainter {
  late Paint brush;
  late Canvas canvas;
  late Size size;
  late Offset center;

  @override
  void paint(Canvas canvas, Size size) {
    this.size = size;
    this.canvas = canvas;
    center = Offset(size.width / 2, size.height / 2);
    brush = Paint();
    brush.strokeWidth = 2.5;
    brush.color = const Color.fromRGBO(39, 35, 67, 1);
    brush.shader = ui.Gradient.radial(
        center,
        sqrt(pow(size.width, 2) + pow(size.height, 2)),
        [
          const Color.fromRGBO(39, 35, 67, 1),
          const Color.fromRGBO(175, 217, 219, 1),
        ],
        null,
        TileMode.mirror);
    canvas.drawRect(
        Rect.fromCenter(center: center, width: size.width, height: size.height),
        brush);
    //drawRightSquiggly();
  }

  void drawRightSquiggly() {
    Path squigglyPath = Path();
    Offset A = Offset(size.width * 0.2, size.height);
    Offset B = Offset(A.dx, A.dy - size.height * 0.08);
    Offset C = Offset(B.dx + size.width * 0.25, B.dy - size.height * 0.1);
    Offset D = Offset(C.dx + size.width * 0.1, C.dy - size.height * 0.1);
    Offset E = Offset(D.dx + size.width * 0.05, D.dy - size.height * 0.15);
    Offset F = Offset(E.dx + size.width * 0.075, E.dy);
    Offset G = Offset(C.dx + size.width * 0.08, C.dy + size.height * 0.05);
    Offset O = Offset(F.dx, G.dy);
    Offset H = Offset(A.dx + size.width * 0.1, A.dy);

    squigglyPath.moveTo(A.dx, A.dy);
    squigglyPath.lineTo(B.dx, B.dy);
    squigglyPath.lineTo(C.dx, C.dy);
    squigglyPath.lineTo(D.dx, D.dy);
    squigglyPath.lineTo(E.dx, E.dy);
    Offset semiCircleCenter = Offset((E.dx + F.dx) / 2, E.dy);
    squigglyPath.addArc(
        Rect.fromCircle(center: semiCircleCenter, radius: F.dx - E.dx), 0, pi);
    squigglyPath.moveTo(F.dx, F.dy);
    squigglyPath.quadraticBezierTo(O.dx, O.dy, G.dx, G.dy);
    squigglyPath.moveTo(G.dx, G.dy);
    squigglyPath.lineTo(H.dx, H.dy);

    Paint shaderBrush = Paint();
    shaderBrush.strokeWidth = 2.5;
    shaderBrush.shader = ui.Gradient.linear(
      A,
      F,
      [
        const Color.fromRGBO(39, 35, 67, 1),
        const Color.fromRGBO(70, 77, 102, 1),
      ],
      null,
      TileMode.mirror,
    );

    canvas.drawPath(squigglyPath, shaderBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
