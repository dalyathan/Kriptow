import 'package:google_fonts/google_fonts.dart';

import '/widgets/containers/common/blue_shade.dart';
import '/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class BuyCryptoAppBar extends StatelessWidget {
  final SuperTypeIcon cytpoIcon;
  final String cryptoName;
  final String abbreviation;
  final double height;
  final double rowHorizontalPaddingRatio;
  const BuyCryptoAppBar(
      {Key? key,
      required this.cytpoIcon,
      required this.cryptoName,
      required this.abbreviation,
      required this.height,
      required this.rowHorizontalPaddingRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rowVerticalPosition = 0.35;
    Size size = MediaQuery.of(context).size;
    double iconSize = height * 0.5;
    double arrowIconSize = iconSize * 0.65;
    cytpoIcon.height = iconSize;
    return Stack(
      children: [
        BlueShadeContainer(width: size.width, height: height),
        Positioned(
            top: rowVerticalPosition * height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * rowHorizontalPaddingRatio),
              child: SizedBox(
                width: size.width * (1 - 2 * rowHorizontalPaddingRatio),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkResponse(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.keyboard_backspace_sharp,
                        color: Colors.white,
                        size: arrowIconSize,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    cytpoIcon,
                    const Spacer(
                      flex: 1,
                    ),
                    SizedBox(
                      height: iconSize,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: iconSize * 0.5,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(cryptoName,
                                  style: GoogleFonts.sora(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: iconSize * 0.425,
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Text(abbreviation,
                                  style: GoogleFonts.sora(
                                      color: const Color.fromRGBO(
                                          169, 167, 181, 1))),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 14,
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      size: arrowIconSize,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
