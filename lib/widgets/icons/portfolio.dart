import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/portfolio.dart';
import 'package:flutter/material.dart';

class PortfolioIcon extends StatelessWidget {
  final double size;
  const PortfolioIcon({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: PortfolioPainter(),
    );
  }
}
