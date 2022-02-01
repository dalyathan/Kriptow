import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeekDays extends StatelessWidget {
  const WeekDays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: ['S', 'M', 'T', 'W', 'T', 'F', 'S']
            .map((e) => Text(
                  e,
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(223, 222, 227, 1),
                      fontWeight: FontWeight.w600),
                ))
            .toList());
  }
}
