import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/binance_coin.dart';
import 'package:flutter/material.dart';

import 'supertype.dart';

class BinanceCoinIcon extends SuperTypeIcon {
  BinanceCoinIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1;
    return CustomPaint(
      size: Size(height * aspectRatio, height),
      painter: BinanceCoinIconPainter(),
    );
  }
}
