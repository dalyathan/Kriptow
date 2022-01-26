import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/portfolio/graph_row.dart';

import '../widgets/containers/portfolio/portfolio_header.dart';

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
    double horizontalPaddingRatio = 0.025;
    double verticalPaddingRatio = 0.025;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      child: PortfolioHeader(
                        height: size.height * 0.045,
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                          left: size.width * horizontalPaddingRatio,
                          top: size.height * verticalPaddingRatio),
                      child: GraphRow(
                        height: size.height * 0.3,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
