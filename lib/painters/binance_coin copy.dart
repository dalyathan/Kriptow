import 'package:flutter/material.dart';
import 'dart:math';

class BinanceCoinIconForegroundPainter extends CustomPainter {
  late Size iconSize;
  late double overallOffsetRatio;
  late double thicknessRatio;
  late double gapRatio;
  late Paint brush;
  late Canvas myCanvas;
  @override
  void paint(Canvas canvas, Size size) {
    iconSize = size;
    myCanvas = canvas;
    overallOffsetRatio = 0.275;
    thicknessRatio = 0.125;
    gapRatio = 0.5 - 1.5 * thicknessRatio;
    //draw the background
    brush = Paint();
    brush.color = Colors.white;
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;
    drawLeftDiamond();
    drawCenterDiamond();
    drawRightDiamond();
    drawTopArrow();
  }

  drawLeftDiamond() {
    Offset A = Offset(iconSize.width * overallOffsetRatio,
        iconSize.height * overallOffsetRatio);
    Offset B = Offset(A.dx + iconSize.width * thicknessRatio, A.dy);
    Offset E = Offset(A.dx, A.dy + iconSize.height * thicknessRatio);
    Offset F = Offset(B.dx, E.dy);
    myCanvas.drawPath(Path()..addPolygon([A, B, F, E], true), brush);
  }

  drawCenterDiamond() {
    Offset K = Offset(iconSize.width * (0.5 - thicknessRatio / 2),
        iconSize.height * (0.5 - thicknessRatio / 2));

    Offset L = Offset(iconSize.width * (0.5 + thicknessRatio / 2), K.dy);
    Offset M = Offset(K.dx, K.dy + iconSize.width * thicknessRatio);
    Offset N = Offset(L.dx, M.dy);
    myCanvas.drawPath(Path()..addPolygon([K, L, N, M], true), brush);
  }

  drawRightDiamond() {
    Offset S = Offset(
        iconSize.width * (1 - overallOffsetRatio - thicknessRatio),
        iconSize.height * (1 - overallOffsetRatio - thicknessRatio));
    Offset T = Offset(iconSize.width * (1 - overallOffsetRatio), S.dy);
    Offset W = Offset(S.dx, iconSize.height * (1 - overallOffsetRatio));
    Offset X = Offset(T.dx, W.dy);
    myCanvas.drawPath(Path()..addPolygon([S, T, X, W], true), brush);
  }

  drawTopArrow() {
    Offset C = Offset(
        iconSize.width * (overallOffsetRatio + thicknessRatio + gapRatio),
        iconSize.height * overallOffsetRatio);
    Offset D = Offset(iconSize.width * (1 - overallOffsetRatio),
        iconSize.height * overallOffsetRatio);
    Offset P = Offset(D.dx,
        iconSize.height * (1 - overallOffsetRatio - thicknessRatio - gapRatio));
    Offset O = Offset(
        iconSize.width * (1 - overallOffsetRatio - thicknessRatio), P.dy);
    Offset H =
        Offset(O.dx, iconSize.height * (overallOffsetRatio + thicknessRatio));
    Offset G = Offset(C.dx, H.dy);

    myCanvas.drawPath(Path()..addPolygon([C, D, P, O, H, G], true), brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
