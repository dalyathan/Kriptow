import 'package:flutter/material.dart';

import '../blue_shade.dart';
import 'personal_info.dart';

class PersonalInfoView extends StatelessWidget {
  final double width;
  final double aspectRatio;
  const PersonalInfoView(
      {Key? key, required this.width, required this.aspectRatio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlueShadeContainer(
          aspectRatio: aspectRatio,
          width: width,
        ),
        PersonalInfo(height: width / aspectRatio)
      ],
    );
  }
}
