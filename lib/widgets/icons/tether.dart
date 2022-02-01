import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';

import '/painters/tether.dart';
import 'package:flutter/material.dart';

class TetherIcon extends SuperTypeIcon {
  TetherIcon({Key? key}) : super(key: key);

  TetherIcon.withHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(height),
      painter: TetherIconPainter(),
    );
  }
}
