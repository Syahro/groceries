import 'package:flutter/material.dart';

import '../theme.dart';

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String price;

  ItemCard({
    this.imageUrl,
    this.name,
    this.description,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: 173,
      decoration: BoxDecoration(
        border: Border.all(color: lightGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Image.asset(
                'assets/$imageUrl',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: semiBoldTextStyle.copyWith(
                fontSize: 15,
                color: darkColor,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: normalTextStyle.copyWith(
                fontSize: 14,
                color: darkColor.withOpacity(0.5),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$$price',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 18,
                    color: darkColor,
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.add,
                    color: whiteColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
