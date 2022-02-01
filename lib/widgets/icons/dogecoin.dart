import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/dogecoin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class DogeCoinIcon extends SuperTypeIcon {
  DogeCoinIcon({Key? key}) : super(key: key);

  DogeCoinIcon.withHeight(double height, {Key? key}) : super(key: key) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: DogeCoinIconPainter(), size: Size.square(height));
  }
}
