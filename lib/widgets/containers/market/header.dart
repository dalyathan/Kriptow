import '/widgets/containers/common/new_notification.dart';
import '/widgets/containers/common/percent_increase.dart';
import 'package:google_fonts/google_fonts.dart';

import '/widgets/containers/common/blue_shade.dart';
import 'package:flutter/material.dart';

class MarketHeader extends StatelessWidget {
  final double height;
  final double horizontalPaddingRatio;
  const MarketHeader(
      {Key? key, required this.height, required this.horizontalPaddingRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double rowheight = height * 0.2;
    return Stack(
      children: [
        BlueShadeContainer(
          width: size.width,
          height: height,
        ),
        Positioned(
          top: height * 0.6,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * horizontalPaddingRatio),
            child: SizedBox(
              height: rowheight,
              width: size.width * (1 - 2 * horizontalPaddingRatio),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      //color: Colors.red,
                      width: size.width * 0.3,
                      child: FittedBox(
                          child: Text("Market Trends",
                              style: GoogleFonts.sora(color: Colors.white)))),
                  const Spacer(
                    flex: 1,
                  ),
                  PercentIncrease(height: rowheight * 0.95, percent: "4.20%"),
                  const Spacer(
                    flex: 10,
                  ),
                  NewNotification(
                    size: rowheight * 0.8,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
