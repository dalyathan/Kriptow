import '/widgets/containers/home/live_prices/live_prices.dart';

import '/widgets/containers/home/portfolio/graph_row.dart';

import '/widgets/containers/home/portfolio/portfolio_header.dart';

import '/widgets/containers/home/profile/personal_info_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headerAspectRatio = 1.7;
    double horizontalPaddingRatio = 0.025;
    double verticalPaddingRatio = 0.035;
    return Column(
      children: [
        PersonalInfoView(
          height: size.width / headerAspectRatio,
          width: size.width,
        ),
        Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * verticalPaddingRatio,
                    horizontal: size.width * horizontalPaddingRatio),
                child: PortfolioHeader(
                  height: size.height * 0.045,
                )),
            Padding(
                padding: EdgeInsets.only(
                  left: size.width * horizontalPaddingRatio,
                ),
                child: Graphs(
                  height: size.height * 0.25,
                )),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.width * verticalPaddingRatio,
                    horizontal: size.height * horizontalPaddingRatio),
                child: LivePrices()),
          ],
        )
      ],
    );
  }
}
