import '/painters/increasing.dart';
import 'package:flutter/material.dart';

class IncreasingIcon extends StatelessWidget {
  final double height;
  const IncreasingIcon({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.9;
    return CustomPaint(
      painter: IncreasingIconPainter(),
      size: Size(height * aspectRatio, height),
    );
  }
}
