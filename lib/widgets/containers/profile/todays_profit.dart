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
            height: height * 0.25,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text('Todays Profit',
                  style: GoogleFonts.spartan(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //color: Colors.yellow,
                height: height * 0.325,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Center(
                    child: Text('\$1,205',
                        style: GoogleFonts.sora(color: Colors.white)),
                  ),
                ),
              ),
              // SizedBox(
              //   width: width * 0.05,
              // ),
              Container(
                height: height * 0.325,
                //color: Colors.green,
                child: Align(
                  alignment: Alignment(0, -height * 0.0075),
                  child: CubicBezierCurveIcon(
                      width: width * 0.15,
                      color: const Color.fromRGBO(175, 217, 219, 1)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
