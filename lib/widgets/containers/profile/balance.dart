import '/widgets/containers/common/percent_increase.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Balance extends StatelessWidget {
  final double width;
  final double height;
  const Balance({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.25,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child:
                  Text('Balance', style: GoogleFonts.sora(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color: Colors.red,
                height: height * 0.325,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Center(
                    child: Text('\$3,975.21',
                        style: GoogleFonts.sora(
                            color: const Color.fromRGBO(186, 232, 232, 1))),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.075,
              ),
              PercentIncrease(
                height: height * 0.325,
                percent: '20%',
              )
            ],
          )
        ],
      ),
    );
  }
}
