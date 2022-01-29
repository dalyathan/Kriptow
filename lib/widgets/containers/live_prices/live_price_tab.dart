import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivePriceTab extends StatelessWidget {
  final double height;
  final Widget icon;
  final String name;
  final String shortName;
  final String amountTransacted;
  final String percentChange;
  const LivePriceTab(
      {Key? key,
      required this.height,
      required this.icon,
      required this.name,
      required this.shortName,
      required this.amountTransacted,
      required this.percentChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //icon.height = height;
    return Row(
      children: [
        icon,
        const Spacer(
          flex: 2,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.5,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  name,
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(87, 87, 87, 1)),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.35,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  shortName,
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(217, 217, 217, 1)),
                ),
              ),
            ),
          ],
        ),
        const Spacer(
          flex: 17,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: height * 0.5,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  '\$$amountTransacted',
                  style: GoogleFonts.sora(
                      color: const Color.fromRGBO(87, 87, 87, 1)),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.35,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  '$percentChange%',
                  style: GoogleFonts.sora(
                      color: num.parse(percentChange) >= 0
                          ? const Color.fromRGBO(90, 200, 166, 1)
                          : const Color.fromRGBO(242, 134, 134, 1)),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
