import '/painters/increasing.dart';
import 'package:flutter/material.dart';

class IncreasingIcon extends StatelessWidget {
  final double height;
  final Color color;
  const IncreasingIcon({Key? key, required this.height, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.9;
    return CustomPaint(
      painter: IncreasingIconPainter(color),
      size: Size(height * aspectRatio, height),
    );
  }
}
