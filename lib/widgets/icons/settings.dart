import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class SettingsIcon extends SuperTypeIcon {
  SettingsIcon({Key? key}) : super(key: key);

  SettingsIcon.withHeight(double height) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    Color foreground = Theme.of(context).accentColor;
    Color background = Theme.of(context).backgroundColor;
    return Container(
      width: height,
      height: height,
      color: background,
      child: Icon(
        Icons.settings_rounded,
        size: height,
        color: foreground,
      ),
    );
  }
}
