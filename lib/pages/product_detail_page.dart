import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: lightGreyColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 17,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          size: 30,
                        ),
                        Image.asset(
                          'assets/upload.png',
                          width: 18,
                          height: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/apple.png',
                        width: MediaQuery.of(context).size.width - (2 * 40),
                        height: 199,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 4,
                          decoration: BoxDecoration(
                            color: darkGreyColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: darkGreyColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: darkGreyColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(2),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                25,
                330,
                25,
                0,
              ),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Naturel Red Apple',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 22,
                          color: darkColor,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    '1 kg, priceg',
                    style: normalTextStyle.copyWith(
                      fontSize: 15,
                      color: darkGreyColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        height: 46,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.remove,
                            ),
                            Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: lightGreyColor,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: semiBoldTextStyle.copyWith(
                                    fontSize: 16,
                                    color: darkColor,
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: greenColor,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$4.99',
                        style: boldTextStyle.copyWith(
                          fontSize: 24,
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Detail',
                        style: normalTextStyle.copyWith(
                          fontSize: 15,
                          color: darkColor,
                        ),
                      ),
                      Icon(Icons.expand_more),
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                    style: normalTextStyle.copyWith(
                      fontSize: 13,
                      color: darkColor.withOpacity(0.5),
                      wordSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nutritions',
                        style: normalTextStyle.copyWith(
                          fontSize: 15,
                          color: darkColor,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 34,
                        height: 18,
                        decoration: BoxDecoration(
                          color: darkGreyColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '100gr',
                            style: normalTextStyle.copyWith(
                                fontSize: 9, color: darkGreyColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Review',
                        style: normalTextStyle.copyWith(
                          fontSize: 15,
                          color: darkColor,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.chevron_right,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {},
                      color: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Text(
                        'Add to Basket',
                        style: normalTextStyle.copyWith(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
