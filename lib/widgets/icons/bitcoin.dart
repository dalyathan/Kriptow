import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'supertype.dart';

class BitcoinIcon extends SuperTypeIcon {
  final Color color;
  final bool rotate;
  double linesGapRatio = 0.135;
  double lineWidthRatio = 0.075;
  double bIconRatio = 0.8;
  double hornHeightRatio = 0.5;
  BitcoinIcon({Key? key, required this.color, this.rotate = false})
      : super(key: key);

  set setHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Align(
          alignment: Alignment(0, -height * hornHeightRatio * 0.03),
          child: horns()),
      Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: height * bIconRatio,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              'B',
              style: GoogleFonts.libreBaskerville(
                  color: color, fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
      Align(
          alignment: Alignment(0, height * hornHeightRatio * 0.03),
          child: horns()),
    ]);
  }

  Container horn() => Container(
        height: height * hornHeightRatio,
        width: height * lineWidthRatio,
        color: color,
      );

  Row horns() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          horn(),
          SizedBox(
            width: height * linesGapRatio,
          ),
          horn()
        ],
      );
}
