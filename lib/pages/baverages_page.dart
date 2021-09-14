import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/baverages_card.dart';

class BaveragesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.chevron_left),
                      Text(
                        'Beverage',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 20,
                          color: darkColor,
                        ),
                      ),
                      Image.asset(
                        'assets/filter.png',
                        width: 16,
                        height: 17,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                          'coke.png', 'Diet Coke', '355ml, Price', '1.99'),
                      BaveragesCard(
                          'sprite.png', 'Sprite Can', '325ml, Price', '1.50'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard('apple_juice.png', 'Apple & Grape\nJuice',
                          '2L, Price', '15.99'),
                      BaveragesCard('orange_juice.png', 'Orange Juice',
                          '2L, Price', '15.50'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard('cocacola.png', 'Coca Cola Can',
                          '325ml, Price', '4.99'),
                      BaveragesCard(
                          'pepsi.png', 'Pepsi Can', '330ml, Price', '4.99'),
                    ],
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
