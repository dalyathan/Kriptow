import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphBackdropContainer extends StatelessWidget {
  final List<String> priceRanges;
  final double height;
  final double width;
  final double hrWidthRatio;
  double textWidthRatio = 0.125;
  late Size size;
  GraphBackdropContainer(
      {Key? key,
      required this.priceRanges,
      required this.height,
      required this.width,
      required this.hrWidthRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: priceRanges.map((e) => row(e)).toList(),
      ),
    );
  }

  Widget row(String price) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              width: width * hrWidthRatio,
              height: 1,
              color: const Color.fromRGBO(223, 222, 227, 1),
            ),
          ),
          SizedBox(
            width: width * textWidthRatio,
            child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  price,
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(223, 222, 227, 1),
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      );
}
