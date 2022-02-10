import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';

class CryptoStockData {
  final SuperTypeIcon icon;
  final String name;
  final String shortName;
  final String amountTransacted;
  final String percentChange;

  CryptoStockData(
      {required this.icon,
      required this.name,
      required this.shortName,
      required this.amountTransacted,
      required this.percentChange});
}
