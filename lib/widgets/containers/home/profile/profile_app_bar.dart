import 'package:flutter/material.dart';

import 'name_and_photo.dart';
import '../../common/new_notification.dart';

class ProfileAppBar extends StatelessWidget {
  final double height;
  const ProfileAppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NameAndPhoto(
          height: height,
          width: size.width * 0.5,
        ),
        NewNotification(
          size: height * 0.75,
        )
      ],
    );
  }
}
