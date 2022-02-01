import 'package:drrrible_nuha_maulana_ahsan_crypto_app/util/vector.dart';
import 'package:flutter/material.dart';

class TrendIconOffsetUtil {
  late List<Offset> offsets;
  late Size frame;
  TrendIconOffsetUtil(Size size) {
    Offset A = Offset(0, size.height);
    Offset B = Offset(A.dx + size.width * 0.2, A.dy - size.height * 0.4);
    Offset C = Offset(B.dx + size.width * 0.2, B.dy + size.height * 0.1);
    Offset D = Offset(C.dx + size.width * 0.2, C.dy - size.height * 0.4);
    Offset E = Offset(D.dx + size.width * 0.2, D.dy + size.height * 0.1);
    Offset F = Offset(size.width, 0);
    offsets = [A, B, C, D, E, F];
    frame = size;
  }

  List<Offset> increasing() => offsets;

  List<Offset> decreasing() {
    VectorUtil util = VectorUtil(frame);
    return offsets.map((e) => util.reflectXAxis(e)).toList();
  }
}
