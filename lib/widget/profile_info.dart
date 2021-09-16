import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileInfo extends StatelessWidget {
  final String imageUrl;
  final String title;

  ProfileInfo(
    this.imageUrl,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
      child: Row(
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: 18,
            height: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: semiBoldTextStyle.copyWith(
              fontSize: 18,
              color: darkColor,
            ),
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            size: 22,
            color: darkColor,
          ),
        ],
      ),
    );
  }
}
