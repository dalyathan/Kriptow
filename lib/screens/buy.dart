import '/widgets/containers/buy/button.dart';
import '/widgets/containers/buy/total_price.dart';
import '/widgets/containers/buy/week_days.dart';
import '/widgets/containers/buy/graph_backdrop.dart';
import '../widgets/containers/common/slide_bar.dart';
import '../widgets/containers/buy/timely_price.dart';
import '/widgets/containers/buy/app_bar.dart';
import '/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class BuyCrypto extends StatefulWidget {
  final SuperTypeIcon cytpoIcon;
  final String cryptoName;
  final String abbreviation;
  final String amountTransacted;
  final String percentChange;
  const BuyCrypto(
      {Key? key,
      required this.cytpoIcon,
      required this.cryptoName,
      required this.abbreviation,
      required this.amountTransacted,
      required this.percentChange})
      : super(key: key);

  @override
  _BuyCryptoState createState() => _BuyCryptoState();
}

class _BuyCryptoState extends State<BuyCrypto> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headerHeightRatio = 0.125;
    double rowHorizontalPaddingRatio = 0.05;
    double totalPriceHeightRatio = 0.1;
    double slideBarHeightRatio = 0.035;
    double graphBakcdropHeightRatio = 0.3;
    double hrWidthRatio = 0.825;
    double elevatedButtonHeightRatio = 0.06;

    double effectiveWidth = size.width * (1 - 2 * rowHorizontalPaddingRatio);

    SizedBox spacer = SizedBox(
      height: size.height * 0.035,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BuyCryptoAppBar(
              abbreviation: widget.abbreviation,
              cryptoName: widget.cryptoName,
              cytpoIcon: widget.cytpoIcon,
              height: size.height * headerHeightRatio,
              rowHorizontalPaddingRatio: rowHorizontalPaddingRatio,
            ),
            spacer,
            TimelyPrice(
              height: size.height * totalPriceHeightRatio,
              percentChange: widget.percentChange,
              amountTransacted: widget.amountTransacted,
              width: effectiveWidth,
            ),
            spacer,
            SlideBar(
              height: size.height * slideBarHeightRatio,
              horizontalPaddingRatio: rowHorizontalPaddingRatio,
              tileNames: const ['1H', '1D', '1W', '1M', '1Y', 'All'],
            ),
            spacer,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GraphBackdropContainer(
                  height: size.height * graphBakcdropHeightRatio,
                  priceRanges: const [
                    '\$39,9K',
                    '\$39,8K',
                    '\$39,7K',
                    '\$39,6K',
                    '\$39,5K',
                    '\$39,4K',
                    '\$39,3K'
                  ],
                  width: effectiveWidth,
                  hrWidthRatio: hrWidthRatio,
                ),
                spacer,
                SizedBox(
                    width: effectiveWidth * hrWidthRatio,
                    child: const WeekDays())
              ],
            ),
            spacer,
            TotalPrice(
              height: size.height * totalPriceHeightRatio,
              width: effectiveWidth,
            ),
            spacer,
            BuyButton(
              height: size.height * elevatedButtonHeightRatio,
              name: widget.cryptoName,
              width: effectiveWidth,
            ),
          ],
        ),
      ),
    );
  }
}
