import '/widgets/containers/common/live_prices/live_prices.dart';

import '/widgets/containers/market/slide_bar.dart';

import '/widgets/containers/market/search_bar.dart';

import '/widgets/containers/market/header.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headheightRatio = 0.15;
    double horizontalPaddingRatio = 0.05;
    double searchBarheightRatio = 0.05;
    double slideBarHeightRatio = 0.05;
    double rowSpaceRatio = 0.035;
    SizedBox spacer = SizedBox(
      height: size.height * rowSpaceRatio,
    );
    return Column(
      children: [
        MarketHeader(
            height: size.height * headheightRatio,
            horizontalPaddingRatio: horizontalPaddingRatio),
        spacer,
        SearchBarContainer(
          horizontalPaddingRatio: horizontalPaddingRatio,
          height: size.height * searchBarheightRatio,
        ),
        spacer,
        SlideBar(
          height: size.height * slideBarHeightRatio,
          horizontalPaddingRatio: horizontalPaddingRatio,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * horizontalPaddingRatio),
          child: LivePrices(
            withIcon: true,
          ),
        )
      ],
    );
  }
}
