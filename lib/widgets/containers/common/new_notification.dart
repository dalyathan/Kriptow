import 'package:flutter/material.dart';

class NewNotification extends StatelessWidget {
  final double size;
  const NewNotification({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double newThumbnailRadiusRatio = 0.175;
    return Stack(
      //fit: StackFit.expand,
      children: [
        Icon(
          Icons.notification_important_rounded,
          color: Colors.white,
          size: size,
        ),
        Positioned(
          left: size * (1 - 2.5 * newThumbnailRadiusRatio),
          child: Container(
            height: size * 2 * newThumbnailRadiusRatio,
            width: size * 2 * newThumbnailRadiusRatio,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(245, 136, 64, 1), shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
