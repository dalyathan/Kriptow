import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/bitcoin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class BitCoinIcon extends SuperTypeIcon {
  final Color color;
  BitCoinIcon({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: BitcoinIconPainter(color), size: Size.square(height));
  }
}
