import 'package:drrrible_nuha_maulana_ahsan_crypto_app/screens/buy.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivePriceTab extends StatelessWidget {
  final double height;
  final SuperTypeIcon icon;
  final String name;
  final String shortName;
  final String amountTransacted;
  final String percentChange;
  Widget? trendIcon;
  LivePriceTab(
      {Key? key,
      required this.height,
      required this.icon,
      required this.name,
      required this.shortName,
      required this.amountTransacted,
      required this.percentChange,
      this.trendIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double detailWidthRatio = 0.3;
    //icon.height = height;
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BuyCrypto(
                  abbreviation: shortName,
                  cryptoName: name,
                  cytpoIcon: icon,
                )),
      ),
      child: SizedBox(
        height: height,
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            SizedBox(
              width: size.width * detailWidthRatio,
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width * detailWidthRatio,
                    child: LimitedBox(
                      maxHeight:
                          trendIcon == null ? height * 0.5 : height * 0.325,
                      maxWidth: size.width * detailWidthRatio,
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
            ),
            Center(child: trendIcon ?? Container()),
            SizedBox(
              width: size.width * detailWidthRatio,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    child: LimitedBox(
                      maxHeight: height * 0.325,
                      maxWidth: size.width * detailWidthRatio,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
