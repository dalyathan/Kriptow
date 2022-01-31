import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/increasing_trend.dart';
import 'package:flutter/material.dart';

class IncreasingTrendIcon extends StatelessWidget {
  final double height;
  const IncreasingTrendIcon({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1.1;
    double width = aspectRatio * height;
    return CustomPaint(
      painter: IncreasingTrendIconPainter(),
      size: Size(width, height),
    );
  }
}
