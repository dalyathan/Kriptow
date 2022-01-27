import 'package:flutter/material.dart';

class EtherumIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const Color upperPyramidTopRightColor = Color.fromRGBO(98, 104, 143, 1);
    const Color upperPyramidTopLeftColor = Color.fromRGBO(138, 146, 178, 1);
    const Color upperPyramidBottomLeftColor = Color.fromRGBO(98, 104, 143, 1);
    const Color upperPyramidBottomRightColor = Color.fromRGBO(69, 74, 117, 1);

    Paint brush = Paint();
    brush.strokeWidth = 2.5;
    brush.style = PaintingStyle.fill;

    double gapRatio = 0.05;
    double pyramidBaseHeightRatio = 0.3;

    Offset A = Offset(size.width * 0.5, 0);
    Offset B = Offset(0, size.height * (0.5 - gapRatio * 0.5));
    Offset C = Offset(A.dx, B.dy - size.height * pyramidBaseHeightRatio * 0.5);
    Offset D = Offset(size.width, B.dy);
    Offset E = Offset(A.dx, B.dy + size.height * pyramidBaseHeightRatio * 0.5);
    Offset F = Offset(0, size.height * (0.5 + gapRatio * 0.5));
    Offset G = Offset(A.dx, E.dy + size.height * gapRatio);
    Offset H = Offset(D.dx, D.dy + size.height * gapRatio);
    Offset I = Offset(G.dx, size.height);

    Path upperPyramidTopRight = Path();
    upperPyramidTopRight.addPolygon([A, C, D], true);
    brush.color = upperPyramidTopRightColor;
    canvas.drawPath(upperPyramidTopRight, brush);

    Path upperPyramidBottomRight = Path();
    upperPyramidBottomRight.addPolygon([E, C, D], true);
    brush.color = upperPyramidBottomRightColor;
    canvas.drawPath(upperPyramidBottomRight, brush);

    Path upperPyramidTopLeft = Path();
    upperPyramidTopLeft.addPolygon([B, C, A], true);
    brush.color = upperPyramidTopLeftColor;
    canvas.drawPath(upperPyramidTopLeft, brush);

    Path upperPyramidBottomLeft = Path();
    upperPyramidBottomLeft.addPolygon([B, C, E], true);
    brush.color = upperPyramidBottomLeftColor;
    canvas.drawPath(upperPyramidBottomLeft, brush);

    Path lowerPyramidLeft = Path();
    lowerPyramidLeft.addPolygon([F, G, I], true);
    brush.color = upperPyramidTopLeftColor;
    canvas.drawPath(lowerPyramidLeft, brush);

    Path lowerPyramidRight = Path();
    lowerPyramidRight.addPolygon([G, H, I], true);
    brush.color = upperPyramidBottomLeftColor;
    canvas.drawPath(lowerPyramidRight, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
