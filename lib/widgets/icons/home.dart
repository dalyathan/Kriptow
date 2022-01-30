import '../../painters/home.dart';
import '/widgets/icons/supertype.dart';
import 'package:flutter/material.dart';

class HomeIcon extends SuperTypeIcon {
  HomeIcon({Key? key}) : super(key: key);

  HomeIcon.withHeight(double height, {Key? key}) : super(key: key) {
    super.height = height;
  }

  @override
  Widget build(BuildContext context) {
    Color foreground = Theme.of(context).accentColor;
    Color background = Theme.of(context).backgroundColor;
    return CustomPaint(
        painter: HomeIconPainter(foreground, background),
        size: Size.square(height));
  }
}
