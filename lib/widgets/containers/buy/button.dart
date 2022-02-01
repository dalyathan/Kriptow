import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyButton extends StatelessWidget {
  final double height;
  final double width;
  final String name;
  const BuyButton(
      {Key? key, required this.height, required this.width, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          width: width * 0.3,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text('Buy $name',
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(39, 35, 67, 1))),
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: const Color.fromRGBO(186, 232, 232, 1),
        ),
      ),
    );
  }
}
