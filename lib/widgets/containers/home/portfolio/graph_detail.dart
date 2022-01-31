import '/widgets/icons/supertype.dart';

import '/widgets/containers/common/percent_increase.dart';

import '/widgets/icons/cubic_bezier_curve.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphDetail extends StatelessWidget {
  final double width;
  final double height;
  final SuperTypeIcon icon;
  final String name;
  final String totalAmount;
  final String percentString;
  const GraphDetail(
      {Key? key,
      required this.width,
      required this.height,
      required this.icon,
      required this.name,
      required this.totalAmount,
      required this.percentString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconBorderRadius = 0.075;
    double paddingRatio = 0.05;
    icon.height = height * 0.16;
    return Padding(
      padding: EdgeInsets.all(width * paddingRatio),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: height * 0.25,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(width * iconBorderRadius))),
                  child: Center(
                    child: icon,
                  )),
              SizedBox(
                width: width * 0.05,
              ),
              SizedBox(
                width: width * 0.3,
                child: FittedBox(
                  child: Text(
                    name,
                    style: GoogleFonts.sora(
                        color: const Color.fromRGBO(39, 35, 67, 1)),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.2,
              ),
              CubicBezierCurveIcon(
                  width: width * 0.075,
                  color: const Color.fromRGBO(95, 91, 117, 1))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //color: Colors.yellow,
                height: height * 0.125,
                width: width * 0.4,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Center(
                    child: Text('\$$totalAmount',
                        style: GoogleFonts.spartan(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.2,
              ),
              Container(
                height: height * 0.125,
                width: width * 0.25,
                decoration: const ShapeDecoration(
                  color: Color.fromRGBO(57, 63, 83, 1),
                  shape: StadiumBorder(),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: width * paddingRatio),
                  child: Center(
                    child: PercentIncrease(
                      height: height * 0.1,
                      percent: percentString,
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
