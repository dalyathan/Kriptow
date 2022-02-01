import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActiveIconContainer extends StatelessWidget {
  final SuperTypeIcon icon;
  final String title;
  const ActiveIconContainer({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color activeBackground = Color.fromRGBO(186, 232, 232, 1);
    const Color activeForeground = Color.fromRGBO(39, 35, 67, 1);
    //const double aspectRatio = 2.5;
    double height = icon.height * 2;
    //double width = height * aspectRatio;
    return Container(
      height: height,
      width: height * 2.5,
      decoration: BoxDecoration(
        color: activeBackground,
        borderRadius: BorderRadius.circular(height * 0.5),
      ),
      child: Center(
        child: Row(
          children: [
            const Spacer(
              flex: 3,
            ),
            Theme(
                data: ThemeData(
                    backgroundColor: activeBackground,
                    accentColor: activeForeground),
                child: icon),
            const Spacer(
              flex: 2,
            ),
            Text(
              title,
              style: GoogleFonts.sora(color: activeForeground, fontSize: 15),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
