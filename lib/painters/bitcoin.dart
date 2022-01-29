import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BitcoinIconPainter extends CustomPainter {
  final Color color;
  late Canvas canvas;
  late Paint brush;
  late Size size;
  double correctingOffset = 0.05;
  double barHeightRatio = 0.15;
  double overallOffset = 0.15;
  double barLeftOffsetRatio = 0.25;
  double barMiddleOffsetRatio = 0.15;
  BitcoinIconPainter(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    //const Color color = Color.fromRGBO(247, 148, 29, 1);
    this.canvas = canvas;
    this.size = size;
    brush = Paint();
    brush.color = color;
    brush.strokeWidth = 3;
    brush.style = PaintingStyle.fill;
    brush.color = color;
    drawB();
    drawUpperLeftBar();
    drawUpperRightBar();
    drawLowerLeftBar();
    drawLowerRightBar();
  }

  void drawUpperLeftBar() {
    Offset topOffset =
        Offset(size.width * (barLeftOffsetRatio + overallOffset), 0);
    Offset bottomOffset =
        Offset(topOffset.dx, size.height * (barHeightRatio + correctingOffset));
    canvas.drawLine(topOffset, bottomOffset, brush);
  }

  void drawUpperRightBar() {
    Offset topOffset = Offset(
        size.width *
            (barLeftOffsetRatio + barMiddleOffsetRatio + overallOffset),
        0);
    Offset bottomOffset =
        Offset(topOffset.dx, size.height * (barHeightRatio + correctingOffset));
    canvas.drawLine(topOffset, bottomOffset, brush);
  }

  void drawLowerLeftBar() {
    Offset topOffset = Offset(size.width * (barLeftOffsetRatio + overallOffset),
        size.height * (1 - (barHeightRatio + correctingOffset)));
    Offset bottomOffset = Offset(topOffset.dx, size.height);
    canvas.drawLine(topOffset, bottomOffset, brush);
  }

  void drawLowerRightBar() {
    Offset topOffset = Offset(
        size.width *
            (barLeftOffsetRatio + barMiddleOffsetRatio + overallOffset),
        size.height * (1 - (barHeightRatio + correctingOffset)));
    Offset bottomOffset = Offset(topOffset.dx, size.height);
    canvas.drawLine(topOffset, bottomOffset, brush);
  }

  void drawB() {
    TextSpan span = TextSpan(
        style: GoogleFonts.libreBaskerville(
            fontSize: size.height * (1 - (barHeightRatio)),
            color: color,
            fontWeight: FontWeight.w900),
        text: 'B');
    TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(size.width * overallOffset, 0));
    // actualbarHeight= size.height - tp.height
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
