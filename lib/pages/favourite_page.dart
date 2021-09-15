import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/bottom_navbar.dart';
import 'package:groceries/widget/fav_card.dart';

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(
        isStore: false,
        isExplore: false,
        isCart: false,
        isFavorite: true,
        isAccount: false,
      ),
      floatingActionButton: Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: greenColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add All To Cart',
              style: normalTextStyle.copyWith(
                fontSize: 18,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: backgroundColor,
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Text(
                    'Favourite',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 20,
                      color: darkColor,
                    ),
                  ),
                  Spacer(),
                  Divider(
                    color: darkGreyColor.withOpacity(0.3),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              // color: greenColor,
              child: ListView(
                padding: EdgeInsets.only(top: 3),
                children: [
                  FavCard(
                    imageUrl: 'sprite.png',
                    title: 'Sprite Can',
                    description: '325ml',
                    price: '1.50',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 30,
                  ),
                  FavCard(
                    imageUrl: 'coke.png',
                    title: 'Diet Coke',
                    description: '355ml',
                    price: '1.99',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 30,
                  ),
                  FavCard(
                    imageUrl: 'apple_juice.png',
                    title: 'Apple & Grape Juice',
                    description: '2l',
                    price: '15.50',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 30,
                  ),
                  FavCard(
                    imageUrl: 'cocacola.png',
                    title: 'Coca Cola Can',
                    description: '325ml',
                    price: '4.99',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 30,
                  ),
                  FavCard(
                    imageUrl: 'pepsi.png',
                    title: 'Pepsi Can',
                    description: '330ml',
                    price: '4.99',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
