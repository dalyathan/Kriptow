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
              child: Text('Balance',
                  style: GoogleFonts.chivo(color: Colors.white)),
            ),
          ),
          SizedBox(
            height: height * 0.2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //color: Colors.red,
                height: height * 0.4,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Center(
                    child: Text('\$3,975.21',
                        style: GoogleFonts.spartan(
                            color: const Color.fromRGBO(186, 232, 232, 1))),
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.025,
              ),
              Container(
                height: height * 0.3,
                //color: Colors.amber,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_up_sharp,
                      color: Colors.white,
                      size: height * 0.15,
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    SizedBox(
                      height: height * 0.175,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text('20%',
                            style: GoogleFonts.spartan(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
