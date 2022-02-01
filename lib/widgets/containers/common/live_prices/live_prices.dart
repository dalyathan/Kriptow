import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/dogecoin.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/etherum_with_background.dart';
import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/tether.dart';

import '/widgets/icons/binance_coin.dart';
import '/widgets/icons/decreasing_trend.dart';
import '/widgets/icons/increasing_trend.dart';
import '/widgets/icons/rotated_bitcoin.dart';

import '/widgets/containers/common/live_prices/live_price_tab.dart';
import '/widgets/icons/cardano.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LivePrices extends StatelessWidget {
  final bool withTrendIcon;
  late Size size;
  LivePrices({Key? key, this.withTrendIcon = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    double verticalPaddingRatio = 0.035;
    double rowheight = size.width * 0.15;
    double trendIconheight = rowheight * 0.7;
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
          amountTransacted: '39,518.09',
          icon: RotatedBitcoinIcon.withHeight(rowheight),
          name: 'Bitcoin',
          percentChange: '+3.81',
          shortName: 'BTC',
          trendIcon: withTrendIcon
              ? IncreasingTrendIcon(height: trendIconheight)
              : null,
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '412.35',
          icon: BinanceCoinIcon.withHeight(rowheight),
          name: 'Binance Coin',
          percentChange: '+3.59',
          shortName: 'BNB',
          trendIcon: withTrendIcon
              ? IncreasingTrendIcon(height: trendIconheight)
              : null,
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '908.04',
          icon: CardanoIcon.withHeight(rowheight),
          name: 'Cardano',
          percentChange: '-1.66',
          shortName: 'ADA',
          trendIcon: withTrendIcon
              ? DecreasingTrendIcon(height: trendIconheight)
              : null,
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '3,781.64',
          icon: EtherumWithBackground.withHeight(rowheight),
          name: 'Etherum',
          percentChange: '-1.77',
          shortName: 'ADA',
          trendIcon: withTrendIcon
              ? DecreasingTrendIcon(height: trendIconheight)
              : null,
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '1.24',
          icon: TetherIcon.withHeight(rowheight),
          name: 'Tether',
          percentChange: '+0.18',
          shortName: 'USDT',
          trendIcon: withTrendIcon
              ? IncreasingTrendIcon(height: trendIconheight)
              : null,
        ),
        space,
        LivePriceTab(
          height: rowheight,
          amountTransacted: '0.35',
          icon: DogeCoinIcon.withHeight(rowheight),
          name: 'Dogecoin',
          percentChange: '-2.04',
          shortName: 'USDT',
          trendIcon: withTrendIcon
              ? DecreasingTrendIcon(height: trendIconheight)
              : null,
        )
      ],
    );
  }
}
