import '/widgets/containers/portfolio/graph.dart';
import 'package:flutter/material.dart';

class GraphRow extends StatelessWidget {
  final double height;
  const GraphRow({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [Graph(height: height)],
      ),
    );
  }
}
