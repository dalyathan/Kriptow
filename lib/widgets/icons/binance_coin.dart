import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/binance_coin.dart';
import 'package:flutter/material.dart';

import 'supertype.dart';

class BinanceCoinIcon extends SuperTypeIcon {
  BinanceCoinIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(height),
      painter: BinanceCoinIconPainter(),
    );
  }
}
