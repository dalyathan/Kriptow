import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalPrice extends StatelessWidget {
  final double height;
  final double width;
  late Size size;
  double heightRatio = 0.3;
  TotalPrice({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    double borderRadiusRatio = 0.1;
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(248, 247, 255, 1),
            borderRadius: BorderRadius.circular(height * borderRadiusRatio)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            priceColumn("24H High", "\$39,984.51"),
            priceColumn("24H Low", "\$38,626.94"),
            priceColumn("24H Vol", "\$4,213 M"),
          ],
        ));
  }

  Column priceColumn(String timeZone, String price) {
    const Color timeColor = Color.fromRGBO(223, 222, 227, 1);
    const Color priceColor = Color.fromRGBO(39, 35, 67, 1);
    double priceHeight = height * heightRatio;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: priceHeight * 0.8,
          child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(timeZone, style: GoogleFonts.sora(color: timeColor))),
        ),
        SizedBox(
          height: priceHeight,
          child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text(price, style: GoogleFonts.sora(color: priceColor))),
        )
      ],
    );
  }
}
