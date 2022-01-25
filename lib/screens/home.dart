import '/widgets/containers/profile/personal_info_view.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PersonalInfoView(
              aspectRatio: 1.7,
              width: size.width,
            )
          ],
        ),
      ),
    );
  }
}
