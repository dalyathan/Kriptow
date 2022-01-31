import '/widgets/containers/home/portfolio/graph_detail.dart';
import '/widgets/icons/bitcoin.dart';
import '/widgets/icons/etherum.dart';

import '/widgets/containers/home/portfolio/graph.dart';
import 'package:flutter/material.dart';

class Graphs extends StatelessWidget {
  final double height;
  const Graphs({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double marginRatio = 0.05;
    double aspectRatio = 1.33;
    double width = height * aspectRatio;
    return SizedBox(
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Graph(
            height: height,
            detail: GraphDetail(
              height: height,
              icon: BitCoinIcon(
                color: const Color.fromRGBO(247, 148, 29, 1),
              ),
              name: 'Bitcoin',
              percentString: '5.71%',
              totalAmount: '1,905.95',
              width: width,
            ),
            width: width,
          ),
          SizedBox(width: size.width * marginRatio),
          Graph(
            height: height,
            detail: GraphDetail(
              height: height,
              icon: EtherumIcon(),
              name: 'Etherum',
              percentString: '6.11%',
              totalAmount: '1,153.02',
              width: width,
            ),
            width: width,
          )
        ],
      ),
    );
  }
}
