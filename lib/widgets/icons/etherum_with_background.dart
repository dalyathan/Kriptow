import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

import 'etherum.dart';

class EtherumWithBackground extends SuperTypeIcon {
  EtherumWithBackground({Key? key}) : super(key: key);

  EtherumWithBackground.withHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(20, 27, 47, 1), shape: BoxShape.circle),
      child: Center(
        child: EtherumIcon.withHeight(height * 0.8),
      ),
    );
  }
}
