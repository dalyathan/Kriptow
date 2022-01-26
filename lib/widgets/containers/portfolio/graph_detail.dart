import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/common/percent_increase.dart';

import '/widgets/icons/bitcoin.dart';
import '/widgets/icons/cubic_bezier_curve.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphDetail extends StatelessWidget {
  final double width;
  final double height;
  const GraphDetail({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconBorderRadius = 0.075;
    double paddingRatio = 0.05;
    return Padding(
      padding: EdgeInsets.all(width * paddingRatio),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: height * 0.2,
                  width: height * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(width * iconBorderRadius))),
                  child: Center(
                    child: BitcoinIcon(
                        height: height * 0.16,
                        color: const Color.fromRGBO(247, 149, 57, 1)),
                  )),
              SizedBox(
                width: width * 0.05,
              ),
              SizedBox(
                width: width * 0.3,
                child: FittedBox(
                  child: Text(
                    'Bitcoin',
                    style: GoogleFonts.manrope(
                        color: const Color.fromRGBO(39, 35, 67, 1)),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CubicBezierCurveIcon(
                  width: width * 0.1,
                  color: const Color.fromRGBO(95, 91, 117, 1))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //color: Colors.yellow,
                height: height * 0.125,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Center(
                    child: Text('\$1,205',
                        style: GoogleFonts.spartan(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.1,
              ),
              Container(
                height: height * 0.125,
                decoration: const ShapeDecoration(
                  color: Color.fromRGBO(57, 63, 83, 1),
                  shape: StadiumBorder(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.075),
                    child: PercentIncrease(
                      height: height * 0.1,
                      percent: '5.71%',
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
