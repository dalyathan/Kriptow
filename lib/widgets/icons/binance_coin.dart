import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/binance_coin.dart';
import 'package:flutter/material.dart';

class BinanceCoinIcon extends StatelessWidget {
  final double width;
  const BinanceCoinIcon({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(width),
      painter: BinanceCoinIconPainter(),
    );
  }
}
