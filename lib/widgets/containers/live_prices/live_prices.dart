import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/live_prices/live_price_tab.dart';
import 'package:flutter/material.dart';

class LivePrices extends StatelessWidget {
  const LivePrices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text("Live Prices"),
        LivePriceTab(height: size.width * 0.15)
      ],
    );
  }
}
