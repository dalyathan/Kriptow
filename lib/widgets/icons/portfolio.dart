import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/portfolio.dart';
import 'package:flutter/material.dart';

class PortfolioIcon extends StatelessWidget {
  final double width;
  const PortfolioIcon({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1.1;
    return CustomPaint(
      size: Size(width, width / aspectRatio),
      painter: PortfolioIconPainter(),
    );
  }
}
