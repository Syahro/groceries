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
                          imageurl: 'coke.png',
                          title: 'Diet Coke',
                          description: '355ml, Price',
                          price: '1.99'),
                      BaveragesCard(
                          imageurl: 'sprite.png',
                          title: 'Sprite Can',
                          description: '325ml, Price',
                          price: '1.50'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                          imageurl: 'apple_juice.png',
                          title: 'Apple & Grape\nJuice',
                          description: '2L, Price',
                          price: '15.99'),
                      BaveragesCard(
                          imageurl: 'orange_juice.png',
                          title: 'Orange Juice',
                          description: '2L, Price',
                          price: '15.50'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                          imageurl: 'cocacola.png',
                          title: 'Coca Cola Can',
                          description: '325ml, Price',
                          price: '4.99'),
                      BaveragesCard(
                          imageurl: 'pepsi.png',
                          title: 'Pepsi Can',
                          description: '330ml, Price',
                          price: '4.99'),
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
