import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/blue_shade.dart';
import 'package:flutter/material.dart';

class BlueShadeContainer extends StatelessWidget {
  final double width;
  final double height;
  const BlueShadeContainer(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: BlueShadePainter(),
    );
  }
}
