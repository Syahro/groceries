import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/baverages_card.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Container(
                        height: 50,
                        width: ((MediaQuery.of(context).size.width - (2 * 25)) -
                            30),
                        decoration: BoxDecoration(
                          color: lightGreyColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: darkGreyColor,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Egg',
                                style: normalTextStyle.copyWith(
                                  fontSize: 14,
                                  color: darkColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/filter.png',
                        width: 17,
                        height: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                        imageurl: 'egg_red.png',
                        title: 'Egg Chicken Red',
                        description: '4pcs, Price',
                        price: '1.99',
                      ),
                      BaveragesCard(
                        imageurl: 'egg_white.png',
                        title: 'Egg Chicken White',
                        description: '180g, Price',
                        price: '1.50',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                        imageurl: 'egg_red.png',
                        title: 'Egg Pasta',
                        description: '30gm, Price',
                        price: '15.99',
                      ),
                      BaveragesCard(
                        imageurl: 'egg_white.png',
                        title: 'Egg Noodles',
                        description: '2L, Price',
                        price: '15.99',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaveragesCard(
                        imageurl: 'egg_red.png',
                        title: 'Mayonnais Eggless',
                        description: '325ml, Price',
                        price: '4.99',
                      ),
                      BaveragesCard(
                        imageurl: 'egg_white.png',
                        title: 'Egg Noodles',
                        description: '330ml, Price',
                        price: '4.99',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
