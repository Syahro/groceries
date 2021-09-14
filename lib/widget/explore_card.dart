import 'package:flutter/material.dart';

import '../theme.dart';

class ExploreCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color backgroundColor;

  ExploreCard(
    this.imageUrl,
    this.title,
    this.backgroundColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189,
      width: ((MediaQuery.of(context).size.width - (2 * 25)) / 2) - 7.5,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.10),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: backgroundColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: 111,
            height: 78,
          ),
          SizedBox(
            height: 27,
          ),
          Text(
            title,
            style: semiBoldTextStyle.copyWith(
              fontSize: 16,
              color: darkColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
