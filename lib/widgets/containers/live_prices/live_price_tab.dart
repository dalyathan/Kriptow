import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/binance_coin.dart';
import 'package:flutter/material.dart';

class LivePriceTab extends StatelessWidget {
  final double height;
  const LivePriceTab({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        BinanceCoinIcon(
          width: height,
        ),
        Column(
          children: const [Text('Binance Coin'), Text('BNB')],
        ),
        Column(
          children: const [Text('\$412.35'), Text('+3.59%')],
        )
      ],
    );
  }
}
