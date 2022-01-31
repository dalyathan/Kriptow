import '/widgets/containers/market/header.dart';
import 'package:flutter/material.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double headheightRatio = 0.2;
    return Column(
      children: [MarketHeader(height: size.height * headheightRatio)],
    );
  }
}
