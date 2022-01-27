import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/etherum.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class EtherumIcon extends SuperTypeIcon {
  EtherumIcon({Key? key}) : super(key: key);

  set setHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.6;
    return CustomPaint(
      size: Size(aspectRatio * height, height),
      painter: EtherumIconPainter(),
    );
  }
}
