import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeIcon extends StatelessWidget {
  final double height;
  final bool isActive;
  const HomeIcon({Key? key, required this.isActive, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color activeForeground = Color.fromRGBO(39, 35, 67, 1);
    const Color activeBackground = Color.fromRGBO(186, 232, 232, 1);
    const Color normalForeground = Color.fromRGBO(223, 222, 227, 1);
    const Color normalBackground = Colors.white;
    double aspectRatio = 2;
    return isActive
        ? Container(
            height: height * 2,
            width: height * 1.5 * aspectRatio,
            decoration: BoxDecoration(
              color: activeBackground,
              borderRadius: BorderRadius.circular(height * 0.5),
            ),
            child: Row(
              children: [
                CustomPaint(
                  painter: HomeIconPainter(activeForeground, activeBackground),
                  size: Size.square(height),
                ),
                SizedBox(
                  height: height * 0.5,
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      'Home',
                      style: GoogleFonts.sora(color: activeBackground),
                    ),
                  ),
                )
              ],
            ),
          )
        : CustomPaint(
            painter: HomeIconPainter(normalForeground, normalBackground),
            size: Size.square(height));
  }
}
