import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/decreasing_trend.dart';
import 'package:flutter/material.dart';

class DecreasingTrendIcon extends StatelessWidget {
  final double height;
  const DecreasingTrendIcon({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1.1;
    double width = aspectRatio * height;
    return CustomPaint(
        painter: DecreasingTrendIconPainter(), size: Size(width, height));
  }
}
