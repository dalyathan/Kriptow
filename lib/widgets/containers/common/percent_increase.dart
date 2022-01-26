import 'package:google_fonts/google_fonts.dart';

import '/widgets/icons/increasing.dart';
import 'package:flutter/material.dart';

class PercentIncrease extends StatelessWidget {
  final String percent;
  final double height;
  const PercentIncrease({Key? key, required this.height, required this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // color: Colors.amber,
      child: Row(
        children: [
          SizedBox(
              //color: Colors.green,
              height: height * 0.583,
              child: Align(
                  alignment: Alignment(0, -height * 0.0083),
                  child: IncreasingIcon(height: height * 0.33))),
          SizedBox(
            width: height * 0.2,
          ),
          SizedBox(
            //color: Colors.orange,
            height: height * 0.583,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(percent,
                  style: GoogleFonts.spartan(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
