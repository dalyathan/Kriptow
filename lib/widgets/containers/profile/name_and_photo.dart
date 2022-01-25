import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameAndPhoto extends StatelessWidget {
  final double width;
  final double height;
  const NameAndPhoto({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSizeRatio = 0.6;
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: height * imageSizeRatio,
            height: height * imageSizeRatio,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(186, 232, 232, 1),
                shape: BoxShape.circle),
            child: Center(child: Image.asset('assets/images/me.jpg')),
          ),
          SizedBox(
            height: height * 0.2,
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Text('Surafel Melese',
                  style: GoogleFonts.chivo(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
