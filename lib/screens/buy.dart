import '/widgets/containers/buy/app_bar.dart';
import '/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class BuyCrypto extends StatefulWidget {
  final SuperTypeIcon cytpoIcon;
  final String cryptoName;
  final String abbreviation;
  const BuyCrypto(
      {Key? key,
      required this.cytpoIcon,
      required this.cryptoName,
      required this.abbreviation})
      : super(key: key);

  @override
  _BuyCryptoState createState() => _BuyCryptoState();
}

class _BuyCryptoState extends State<BuyCrypto> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headerHeightRatio = 0.1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BuyCryptoAppBar(
              abbreviation: widget.abbreviation,
              cryptoName: widget.cryptoName,
              cytpoIcon: widget.cytpoIcon,
              height: size.height * headerHeightRatio,
            )
          ],
        ),
      ),
    );
  }
}
