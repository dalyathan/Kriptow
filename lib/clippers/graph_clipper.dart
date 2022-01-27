import 'package:flutter/material.dart';
import 'dart:math';

class GraphClipper extends CustomClipper<Path> {
  late Size size;
  final double borderRadiusRatio;

  GraphClipper(this.borderRadiusRatio);
  @override
  Path getClip(Size size) {
    this.size = size;
    Path path = Path();
    Random random = Random();
    double leastAllowedRandom = borderRadiusRatio;
    double mostAllowedRandom = 1 - borderRadiusRatio;

    double startOffsetRatio =
        random.nextDouble() * (mostAllowedRandom - leastAllowedRandom) +
            leastAllowedRandom;
    double endOffsetRatio =
        random.nextDouble() * (mostAllowedRandom - leastAllowedRandom) +
            leastAllowedRandom;

    Offset A = Offset(0, size.height * startOffsetRatio);
    Offset B = Offset(0, size.height - size.width * borderRadiusRatio);
    Offset C = Offset(size.width * borderRadiusRatio, B.dy);
    Offset D = Offset(C.dx, size.height);
    Offset E = Offset(size.width * (1 - borderRadiusRatio), size.height);
    Offset F = Offset(E.dx, B.dy);
    Offset G = Offset(size.width, B.dy);
    Offset H = Offset(size.width, size.height * endOffsetRatio);

    path.addArc(Rect.fromCircle(center: C, radius: D.dy - C.dy), -pi, -pi / 2);
    path.addArc(
        Rect.fromCircle(center: F, radius: E.dy - F.dy), -1.5 * pi, -pi / 2);
    path.addPolygon([A, B, D, E, G, H, ...getRandomListOfPoint(H, A)], false);
    return path;
  }

  List<Offset> getRandomListOfPoint(Offset a, Offset b) {
    Random randomObject = Random();
    int length = 20;
    List<double> xPartition = List<double>.generate(
        length,
        (index) =>
            a.dx +
            index * randomObject.nextDouble() +
            index * ((b.dx - a.dx) / (length - 1)));
    List<double> yPartition = List<double>.generate(
        length,
        (index) =>
            a.dy +
            (length - index) * randomObject.nextDouble() +
            index * ((b.dy - a.dy) / (length - 1)));
    List<Offset> offsets = [];
    for (int i = 0; i < length; i++) {
      offsets.add(Offset(xPartition[i], yPartition[i]));
    }
    return offsets;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
