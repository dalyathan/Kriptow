import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/blue_shade.dart';
import 'package:flutter/material.dart';

class BlueShadeContainer extends StatelessWidget {
  final double width;
  final double aspectRatio;
  const BlueShadeContainer(
      {Key? key, required this.width, required this.aspectRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, width / aspectRatio),
      painter: BlueShadePainter(),
    );
  }
}
