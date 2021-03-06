import 'package:google_fonts/google_fonts.dart';

import '/widgets/icons/increasing.dart';
import 'package:flutter/material.dart';

class PercentIncrease extends StatelessWidget {
  final String percent;
  final double height;
  Color color;
  PercentIncrease(
      {Key? key,
      required this.height,
      required this.percent,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      //color: Colors.green,
      child: Row(
        children: [
          Container(
              //color: Colors.blue,
              height: height * 0.35,
              child: Align(
                  alignment: Alignment(0, -height * 0.025),
                  child: IncreasingIcon(
                    height: height * 0.25,
                    color: color,
                  ))),
          SizedBox(
            width: height * 0.2,
          ),
          Container(
            //color: Colors.orange,
            height: height * 0.5,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
              child: Text(percent, style: GoogleFonts.spartan(color: color)),
            ),
          )
        ],
      ),
    );
  }
}
