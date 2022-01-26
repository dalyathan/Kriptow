import 'package:flutter/material.dart';

class IncreasingIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush = Paint();
    brush.color = Colors.white;
    brush.style = PaintingStyle.fill;
    brush.strokeWidth = 2.5;

    double bottomCuttedEdgeOfset = 0.125;

    Offset A = Offset(size.width * 0.5, 0);
    Offset B = Offset(0, size.height - size.width * bottomCuttedEdgeOfset);
    Offset C = Offset(size.width * bottomCuttedEdgeOfset, size.height);
    Offset D = Offset(size.width * (1 - bottomCuttedEdgeOfset), size.height);
    Offset E =
        Offset(size.width, size.height - size.width * bottomCuttedEdgeOfset);

    Path path = Path();
    // path.moveTo(A.dx, A.dy);
    // path.moveTo(B.dx, B.dy);
    // path.moveTo(C.dx, C.dy);
    // path.moveTo(D.dx, D.dy);
    // path.moveTo(E.dx, E.dy);

    path.addPolygon([A, B, C, D, E], true);
    canvas.drawPath(path, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
