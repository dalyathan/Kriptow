import 'package:drrrible_nuha_maulana_ahsan_crypto_app/painters/search.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  final double size;
  const SearchIcon({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SearchIconPainter(),
      size: Size.square(size),
    );
  }
}
