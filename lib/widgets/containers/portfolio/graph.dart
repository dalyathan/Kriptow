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
    double borderRadiusRatio = 0.2;
    return /*Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(248, 247, 255, 1),
              borderRadius:
                  BorderRadius.all(Radius.circular(width * borderRadiusratio))),
        ),*/
        ClipPath(
      clipper: GraphClipper(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(width * borderRadiusRatio))),
        child: BlueShadeContainer(
          aspectRatio: aspectRatio,
          width: width,
        ),
      ),
    )
        /*],
    )*/
        ;
  }
}
