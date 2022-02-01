import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/common/blue_shade.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class BuyCryptoAppBar extends StatelessWidget {
  final SuperTypeIcon cytpoIcon;
  final String cryptoName;
  final String abbreviation;
  final double height;
  const BuyCryptoAppBar(
      {Key? key,
      required this.cytpoIcon,
      required this.cryptoName,
      required this.abbreviation,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double rowVerticalPosition = 0.25;
    double rowHorizontalPaddingRatio = 0.05;
    Size size = MediaQuery.of(context).size;
    double iconSize = size.width * 0.1;
    cytpoIcon.height = height * 0.5;
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
                  children: [
                    InkResponse(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.keyboard_backspace_sharp,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                    cytpoIcon
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
