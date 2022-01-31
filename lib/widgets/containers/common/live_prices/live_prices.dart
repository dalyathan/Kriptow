import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/binance_coin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/etherum.dart';

import '/widgets/containers/common/live_prices/live_price_tab.dart';
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
    double rowheight = size.width * 0.15;
    SizedBox space = SizedBox(
      height: rowheight * 0.25,
    );
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
        LivePriceTab(
          height: rowheight,
          amountTransacted: '412.35',
          icon: BinanceCoinIcon.withHeight(rowheight),
          name: 'Binance Coin',
          percentChange: '+3.59',
          shortName: 'BNB',
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '908.04',
          icon: CardanoIcon.withHeight(rowheight),
          name: 'Cardano',
          percentChange: '-1.66',
          shortName: 'ADA',
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '3,781.64',
          icon: Container(
            height: rowheight,
            width: rowheight,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(20, 27, 47, 1), shape: BoxShape.circle),
            child: Center(
              child: EtherumIcon.withHeight(rowheight * 0.8),
            ),
          ),
          name: 'Etherum',
          percentChange: '-1.77',
          shortName: 'ADA',
        ),
      ],
    );
  }
}
