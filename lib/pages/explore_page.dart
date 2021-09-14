import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/bottom_navbar.dart';
import 'package:groceries/widget/explore_card.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomNavbar(
        isStore: false,
        isExplore: true,
        isCart: false,
        isFavorite: false,
        isAccount: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Find Products',
                        style: boldTextStyle.copyWith(
                          fontSize: 20,
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
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
                            'Search Store',
                            style: normalTextStyle.copyWith(
                              fontSize: 13,
                              color: darkGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreCard(
                        'fruits.png',
                        'Frash Fruits\n& Vegetable',
                        greenColor,
                      ),
                      ExploreCard(
                        'oil.png',
                        'Cooking Oil\n& Ghee',
                        orangeColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreCard(
                        'meat.png',
                        'Meat & Fish',
                        semiPinkColor,
                      ),
                      ExploreCard(
                        'bakery.png',
                        'Bakery & Snacks',
                        semiPurpleColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreCard(
                        'eggs.png',
                        'Dairy & Eggs',
                        semiYelowColor,
                      ),
                      ExploreCard(
                        'baverage.png',
                        'Beverages',
                        semiGreenColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreCard(
                        'fruits.png',
                        'Frash Fruits\n& Vegetable',
                        semiPurpleColor,
                      ),
                      ExploreCard(
                        'oil.png',
                        'Cooking Oil\n& Ghee',
                        semiPinkColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
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
