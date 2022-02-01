import 'dart:ui';

import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/bitcoin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RotatedBitcoinIcon extends SuperTypeIcon {
  RotatedBitcoinIcon({Key? key}) : super(key: key);

  RotatedBitcoinIcon.withHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(247, 147, 26, 1), shape: BoxShape.circle),
      child: Transform.rotate(
        angle: 1 * pi / 12,
        child: Center(
          child: CustomPaint(
            size: Size.square(height * 0.75),
            painter: BitcoinIconPainter(Colors.white),
          ),
        ),
      ),
    );
  }
}
