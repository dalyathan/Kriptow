import 'package:drrrible_nuha_maulana_ahsan_crypto_app/widgets/containers/profile/profile_app_bar.dart';
import 'package:flutter/material.dart';

import 'balance.dart';
import 'todays_profit.dart';

class PersonalInfo extends StatelessWidget {
  final double height;
  const PersonalInfo({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double horizontalPaddingRatio = 0.075;
    double verticalPaddingRatio = 0.125;
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: height * verticalPaddingRatio,
          horizontal: height * horizontalPaddingRatio),
      child: Container(
        // color: Colors.yellow,
        height: height * (1 - 2 * verticalPaddingRatio),
        child: Column(
          children: [
            ProfileAppBar(
              height: height * 0.25,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Balance(
                  width: size.width * (1 - 2 * horizontalPaddingRatio) * 0.5,
                  height: height * 0.4,
                ),
                TodaysProfit(
                  height: height * 0.4,
                  width: size.width * (1 - 2 * horizontalPaddingRatio) * 0.375,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
