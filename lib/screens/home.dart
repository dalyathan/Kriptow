import '/widgets/containers/portfolio.dart';

import '/widgets/containers/profile/personal_info_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double borderRadiusRatio = 0.1;
    double overlapRatio = 0.05;
    double headerAspectRatio = 1.7;
    double horizontalPaddingRatio = 0.05;
    double verticalPaddingRatio = 0.05;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PersonalInfoView(
              aspectRatio: headerAspectRatio,
              width: size.width,
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.width * verticalPaddingRatio,
                        horizontal: size.height * horizontalPaddingRatio),
                    child: PortfolioContainer(
                      height: size.height * 0.035,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
