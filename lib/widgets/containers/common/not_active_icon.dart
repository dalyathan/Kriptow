import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class NotActiveIconContainer extends StatelessWidget {
  final SuperTypeIcon icon;
  const NotActiveIconContainer({Key? key, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            accentColor: Color.fromRGBO(223, 222, 227, 1),
            backgroundColor: Colors.white),
        child: icon);
  }
}
