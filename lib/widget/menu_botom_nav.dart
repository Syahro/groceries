import 'package:flutter/material.dart';

import '../theme.dart';

class MenuBottomNav extends StatelessWidget {
  final String imageUrl;
  final double widthIcon;
  final double heightIcon;
  final String title;
  final bool isActive;

  MenuBottomNav({
    this.imageUrl,
    this.widthIcon,
    this.heightIcon,
    this.title,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/$imageUrl',
          width: widthIcon,
          height: heightIcon,
          color: isActive ? greenColor : darkColor,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: semiBoldTextStyle.copyWith(
            fontSize: 12,
            color: isActive ? greenColor : darkColor,
          ),
        )
      ],
    );
  }
}
