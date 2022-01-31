import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/market.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class MarketIcon extends SuperTypeIcon {
  MarketIcon({Key? key}) : super(key: key);

  MarketIcon.withHeight(double height, {Key? key}) : super(key: key) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    Color foreground = Theme.of(context).accentColor;
    Color background = Theme.of(context).backgroundColor;
    return CustomPaint(
        painter: MarketIconPainter(background, foreground),
        size: Size.square(height));
  }
}
