import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/portfolio/graph_detail.dart';

import '/clippers/graph_clipper.dart';
import '/widgets/containers/common/blue_shade.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  final double height;
  const Graph({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double aspectRatio = 0.9;
    double width = height * aspectRatio;
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
            aspectRatio: aspectRatio,
            width: width,
          ),
        ),
        GraphDetail(width: width, height: height)
      ],
    );
  }
}
