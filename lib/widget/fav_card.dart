import 'package:flutter/material.dart';

import '../theme.dart';

class FavCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String price;

  FavCard({
    this.imageUrl,
    this.title,
    this.description,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: 32,
            height: 54,
          ),
          SizedBox(
            width: 32,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: semiBoldTextStyle.copyWith(
                  fontSize: 16,
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '$description, price',
                style: normalTextStyle.copyWith(
                  fontSize: 14,
                  color: darkGreyColor.withOpacity(0.7),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '\$$price',
            style: semiBoldTextStyle.copyWith(
              fontSize: 16,
              color: darkColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.chevron_right,
            color: darkColor,
          ),
        ],
      ),
    );
  }
}
