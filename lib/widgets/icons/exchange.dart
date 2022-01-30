import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/exchange.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class ExchangeIcon extends SuperTypeIcon {
  ExchangeIcon({
    Key? key,
  }) : super(key: key);

  ExchangeIcon.withHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    Color foreground = Theme.of(context).accentColor;
    Color background = Theme.of(context).backgroundColor;
    return CustomPaint(
      size: Size.square(height),
      painter: ExchangeIconPainter(foreground, background),
    );
  }
}
