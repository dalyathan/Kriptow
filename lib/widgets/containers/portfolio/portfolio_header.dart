import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioHeader extends StatelessWidget {
  final double height;
  const PortfolioHeader({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: height * 0.8,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Text('Portfolio',
                style: GoogleFonts.spartan(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        PortfolioIcon(width: height)
      ],
    );
  }
}
