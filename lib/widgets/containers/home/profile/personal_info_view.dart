import '/widgets/containers/common/blue_shade.dart';
import 'package:flutter/material.dart';
import 'personal_info.dart';

class PersonalInfoView extends StatelessWidget {
  final double width;
  final double height;
  const PersonalInfoView({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlueShadeContainer(
          height: height,
          width: width,
        ),
        PersonalInfo(height: height)
      ],
    );
  }
}
