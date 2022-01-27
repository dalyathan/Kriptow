import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/live_prices/live_price_tab.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/binance_coin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/cardano.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivePrices extends StatelessWidget {
  late Size size;
  LivePrices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title("Live Prices"),
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
        )
      ],
    );
  }

  Widget title(String heading) => SizedBox(
        width: size.width * 0.2,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(heading,
              style: GoogleFonts.sora(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      );
}
