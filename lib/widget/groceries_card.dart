import 'package:flutter/material.dart';

import '../theme.dart';

class GroceriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color backColor;

  GroceriesCard(
    this.imageUrl,
    this.title,
    this.backColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 248,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: 71,
            height: 71,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: semiBoldTextStyle.copyWith(
              fontSize: 20,
              color: darkColor,
            ),
          ),
        ],
      ),
    );
  }
}
