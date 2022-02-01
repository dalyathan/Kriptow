import 'package:flutter/material.dart';

class MarketIconPainter extends CustomPainter {
  final Color background;
  final Color foreground;
  late Paint brush;
  late Size size;
  late Canvas canvas;
  double spaceBetweenBarsRatio = 0.15;
  double leftBarHeightRatio = 0.5;
  double middleBarHeightRatio = 0.8;
  double rightBarheightRatio = 0.35;
  double horizontalBarPadding = 0.1;
  double bottomBarheight = 0.1;
  late double barStrokeWidthRatio;

  MarketIconPainter(this.background, this.foreground);
  @override
  void paint(Canvas canvas, Size size) {
    barStrokeWidthRatio =
        (1 - 2 * (spaceBetweenBarsRatio + horizontalBarPadding)) / 3;
    assert(barStrokeWidthRatio > 0);
    brush = Paint()
      ..color = foreground
      ..strokeWidth = size.width * barStrokeWidthRatio
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;
    this.size = size;
    this.canvas = canvas;
    drawLeftBar();
    drawBottomBar();
    drawMiddleBar();
    drawRightBar();
  }

  void drawLeftBar() {
    Offset leftBarBottom = Offset(
        size.width * (horizontalBarPadding + barStrokeWidthRatio * 0.5),
        size.height * (1 - bottomBarheight));
    Offset leftBarTop = Offset(
        leftBarBottom.dx, leftBarBottom.dy - size.height * leftBarHeightRatio);
    canvas.drawLine(leftBarTop, leftBarBottom, brush);
  }

  void drawBottomBar() {
    canvas.drawLine(
        Offset(0, size.width),
        Offset(size.width, size.height),
        brush
          ..strokeWidth = size.width * barStrokeWidthRatio * 0.5
          ..strokeJoin = StrokeJoin.bevel);
  }

  void drawMiddleBar() {
    Offset bottom = Offset(
        size.width *
            (horizontalBarPadding +
                spaceBetweenBarsRatio +
                barStrokeWidthRatio * 1.5),
        size.height * (1 - bottomBarheight));
    Offset top =
        Offset(bottom.dx, bottom.dy - size.height * middleBarHeightRatio);
    canvas.drawLine(
        bottom, top, brush..strokeWidth = size.width * barStrokeWidthRatio);
  }

  void drawRightBar() {
    Offset top = Offset(
        size.width * (1 - (horizontalBarPadding + barStrokeWidthRatio * 0.5)),
        size.height * (1 - rightBarheightRatio));
    Offset bottom =
        Offset(top.dx, size.height * (1 - barStrokeWidthRatio * 0.5));
    canvas.drawLine(top, bottom, brush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      this != oldDelegate;
}
