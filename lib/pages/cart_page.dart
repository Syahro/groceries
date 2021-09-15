import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/bottom_navbar.dart';
import 'package:groceries/widget/mycart_card.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 43,
            ),
            Text(
              'Go to Checkout',
              style: normalTextStyle.copyWith(
                fontSize: 18,
                color: whiteColor,
              ),
            ),
            Container(
              width: 43,
              height: 22,
              decoration: BoxDecoration(
                color: darkGreenColor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Text(
                  '\$12.96',
                  style: normalTextStyle.copyWith(
                    fontSize: 12,
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavbar(
        isStore: false,
        isExplore: false,
        isCart: true,
        isFavorite: false,
        isAccount: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: backgroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Cart',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 20,
                            color: darkColor,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: darkGreyColor.withOpacity(0.6),
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
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                color: backgroundColor,
                child: ListView(
                  padding: EdgeInsets.only(top: 2),
                  children: [
                    MycartCard(
                      imageUrl: 'pepper.png',
                      title: 'Bell Pepper Red',
                      subTitle: '1kg',
                      price: '4.99',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(),
                    SizedBox(
                      height: 30,
                    ),
                    MycartCard(
                      imageUrl: 'egg_red.png',
                      title: 'Egg Chicken Red',
                      subTitle: '4pcs',
                      price: '1.99',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(),
                    SizedBox(
                      height: 30,
                    ),
                    MycartCard(
                      imageUrl: 'banana.png',
                      title: 'Organic Bananas',
                      subTitle: '12kg',
                      price: '3.00',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(),
                    SizedBox(
                      height: 30,
                    ),
                    MycartCard(
                      imageUrl: 'ginger.png',
                      title: 'Ginger',
                      subTitle: '250gsm',
                      price: '2.99',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
