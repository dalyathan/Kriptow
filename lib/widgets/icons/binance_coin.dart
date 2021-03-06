import '../../painters/binance_coin_foreground.dart';
import 'dart:math';
import '../../painters/binance_coin_background.dart';
import 'package:flutter/material.dart';

import 'supertype.dart';

class BinanceCoinIcon extends SuperTypeIcon {
  BinanceCoinIcon({Key? key}) : super(key: key);

  BinanceCoinIcon.withHeight(double height, {Key? key}) : super(key: key) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 1;
    return CustomPaint(
      size: Size(height * aspectRatio, height),
      painter: BinanceCoinIconBackgroundPainter(),
      child: Transform.rotate(
        angle: -atan(aspectRatio),
        child: CustomPaint(
            size: Size(height * aspectRatio, height),
            painter: BinanceCoinIconForegroundPainter()),
      ),
    );
  }
}
