import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/stock_graph.dart';
import 'package:flutter/material.dart';

class StockGraph extends StatelessWidget {
  final double width;
  final double height;
  const StockGraph({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: StockGraphPainter(), size: Size(width, height));
  }
}
