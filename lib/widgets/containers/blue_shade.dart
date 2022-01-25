import '../../painters/blue_shade.dart';
import 'package:flutter/material.dart';

class BlueShadeBackground extends StatelessWidget {
  final double width;
  final double aspectRatio;
  const BlueShadeBackground(this.width, this.aspectRatio, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, width / aspectRatio),
      painter: BlueShadePainter(),
    );
  }
}
