import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/binance_coin.dart';

import '/widgets/containers/live_prices/live_price_tab.dart';
import '/widgets/icons/cardano.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivePrices extends StatelessWidget {
  late Size size;
  LivePrices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    double verticalPaddingRatio = 0.035;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * verticalPaddingRatio,
          ),
          child: Text("Live Prices",
              style: GoogleFonts.spartan(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ),
        //title(),
        LivePriceTab(
          height: size.width * 0.15,
          amountTransacted: '412.35',
          icon: BinanceCoinIcon(),
          name: 'Binance Coin',
          percentChange: '+3.59',
          shortName: 'BNB',
        ),
        LivePriceTab(
          height: size.width * 0.15,
          amountTransacted: '19,908.04',
          icon: CardanoIcon(),
          name: 'Binance Coin',
          percentChange: '-1.66',
          shortName: 'ADA',
        ),
      ],
    );
  }

  Widget title(String heading) => SizedBox(
        height: size.height * 0.07,
        width: size.width * 0.25,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(heading,
              style: GoogleFonts.sora(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      );
}
