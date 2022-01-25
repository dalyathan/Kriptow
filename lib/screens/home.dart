import '/widgets/containers/blue_shade.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [BlueShadeBackground(size.width, 1.5)],
        ),
      ),
    );
  }
}
