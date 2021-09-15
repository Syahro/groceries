import 'package:flutter/material.dart';

import '../theme.dart';

class MycartCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String price;

  MycartCard({
    this.imageUrl,
    this.title,
    this.subTitle,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            'assets/$imageUrl',
            width: 70,
            height: 65,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3,
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
                '$subTitle, Price',
                style: normalTextStyle.copyWith(
                  fontSize: 14,
                  color: darkGreyColor.withOpacity(0.7),
                ),
              ),
              Spacer(),
              Container(
                height: 47,
                width: 133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: darkGreyColor.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: darkGreyColor.withOpacity(0.7),
                          size: 30,
                        ),
                      ),
                    ),
                    Text(
                      '1',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 16,
                        color: darkColor,
                      ),
                    ),
                    Container(
                      height: 47,
                      width: 47,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: darkGreyColor.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: greenColor,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.close, color: darkGreyColor),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  '\$$price',
                  style: semiBoldTextStyle.copyWith(
                    fontSize: 18,
                    color: darkColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
