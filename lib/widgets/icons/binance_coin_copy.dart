import '/painters/binance_coin%20copy.dart';
import 'dart:math';
import '/painters/binance_coin_copy.dart';
import 'package:flutter/material.dart';

import 'supertype.dart';

class BinanceCoinIcon extends SuperTypeIcon {
  BinanceCoinIcon({Key? key}) : super(key: key);

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
