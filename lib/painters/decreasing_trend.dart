import 'package:drrrible_nuha_maulana_ahsan_crypto_app/util/data.dart';
import 'dart:ui' as ui;
import 'dart:math';
import 'package:flutter/material.dart';

class DecreasingTrendIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    List<Offset> offsets = DataUtil(size).decreasing();
    Offset center = Offset(size.width / 2, size.height / 2);
    Paint brush = Paint()
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..shader = ui.Gradient.radial(
          const ui.Offset(0, 0),
          sqrt(pow(size.width, 2) + pow(size.height, 2)),
          [
            Colors.white,
            const Color.fromRGBO(238, 95, 95, 1),
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
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
