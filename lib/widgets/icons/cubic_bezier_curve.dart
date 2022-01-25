import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/cubic_bezier_curve.dart';
import 'package:flutter/material.dart';

class CubicBezierCurveIcon extends StatelessWidget {
  final double width;
  final Color color;
  const CubicBezierCurveIcon(
      {Key? key, required this.width, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1.33;
    return CustomPaint(
      painter: CubicBezierCurvePainter(color),
      size: Size(width, width / aspectRatio),
    );
  }
}
