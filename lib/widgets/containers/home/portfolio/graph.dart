import '/widgets/containers/home/portfolio/graph_detail.dart';

import '/clippers/graph_clipper.dart';
import '/widgets/containers/common/blue_shade.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  final double height;
  final double width;
  final GraphDetail detail;
  const Graph(
      {Key? key,
      required this.height,
      required this.detail,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double borderRadiusRatio = 0.1;
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(248, 247, 255, 1),
              borderRadius:
                  BorderRadius.all(Radius.circular(width * borderRadiusRatio))),
        ),
        ClipPath(
          clipper: GraphClipper(borderRadiusRatio),
          child: BlueShadeContainer(
            height: height,
            width: width,
          ),
        ),
        detail
      ],
    );
  }
}
