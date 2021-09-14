import 'package:flutter/material.dart';

import '../theme.dart';

class BaveragesCard extends StatelessWidget {
  final String imageurl;
  final String title;
  final String description;
  final String price;

  BaveragesCard(this.imageurl, this.title, this.description, this.price);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: ((MediaQuery.of(context).size.width - (2 * 25)) / 2) - 7.5,
      decoration: BoxDecoration(
        border: Border.all(color: lightGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/$imageurl',
                height: 90,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
             title,
              style: semiBoldTextStyle.copyWith(
                fontSize: 16,
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
                color: darkColor.withOpacity(0.6),
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
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: whiteColor,
                    ),
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
