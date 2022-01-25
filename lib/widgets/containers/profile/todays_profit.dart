import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/cubic_bezier_curve.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodaysProfit extends StatelessWidget {
  final double width;
  final double height;
  const TodaysProfit({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: height,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.2,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text('Todays Profit',
                  style: GoogleFonts.spartan(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: height * 0.25,
          ),
          Row(
            children: [
              Container(
                //color: Colors.red,
                width: width * 0.8,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Center(
                    child: Text('\$1,205',
                        style: GoogleFonts.spartan(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.05,
              ),
              CubicBezierCurveIcon(
                  width: width * 0.15,
                  color: const Color.fromRGBO(175, 217, 219, 1))
            ],
          )
        ],
      ),
    );
  }
}
