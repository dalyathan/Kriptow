import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';

class CryptoStockData {
  final SuperTypeIcon icon;
  final String name;
  final String shortName;
  final String amountTransacted;
  final String percentChange;

  // amountTransacted: '0.35',
  //         icon: DogeCoinIcon.withHeight(rowheight),
  //         name: 'Dogecoin',
  //         percentChange: '-2.04',
  //         shortName: 'USDT',

  CryptoStockData(
      {required this.icon,
      required this.name,
      required this.shortName,
      required this.amountTransacted,
      required this.percentChange});
}
