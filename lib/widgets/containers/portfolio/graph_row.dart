import '/widgets/containers/portfolio/graph.dart';
import 'package:flutter/material.dart';

class GraphRow extends StatelessWidget {
  final double height;
  const GraphRow({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double marginRatio = 0.05;
    return SizedBox(
      height: height,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Graph(height: height),
          SizedBox(width: size.width * marginRatio),
          Graph(height: height)
        ],
      ),
    );
  }
}
