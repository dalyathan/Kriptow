import 'package:flutter/material.dart';

import 'profile/personal_info_view.dart';
import 'profile/profile_app_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double aspectRatio = 1.7;
    double height = size.width / 1.7;
    return SliverAppBar(
      pinned: true,
      snap: true,
      floating: true,
      collapsedHeight: height * 0.425,
      expandedHeight: height,
      flexibleSpace: FlexibleSpaceBar(
        title: ProfileAppBar(
          height: height * 0.25,
        ),
        background: PersonalInfoView(
          aspectRatio: aspectRatio,
          width: size.width,
        ),
      ),
    );
  }
}
