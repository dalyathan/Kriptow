import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/cardano.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class CardanoIcon extends SuperTypeIcon {
  CardanoIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(height),
      painter: CardanoIconPainter(),
    );
  }
}
