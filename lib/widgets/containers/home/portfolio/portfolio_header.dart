import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioHeader extends StatelessWidget {
  final double height;
  const PortfolioHeader({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Portfolio',
            style: GoogleFonts.spartan(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        // ),
        // ),
        PortfolioIcon(width: height * 0.8)
      ],
    );
  }
}
/**
 * SizedBox(
          height: height * 0.8,
          width: size.width * 0.25,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Portfolio',
                style: GoogleFonts.spartan(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        )
 */