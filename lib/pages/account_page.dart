import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/bottom_navbar.dart';
import 'package:groceries/widget/profile_info.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: BottomNavbar(
        isStore: false,
        isExplore: false,
        isCart: false,
        isFavorite: false,
        isAccount: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Row(
                children: [
                  Image.asset(
                    'assets/profile.png',
                    width: 63,
                    height: 64,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Afsar Hossen',
                            style: semiBoldTextStyle.copyWith(
                              fontSize: 20,
                              color: darkColor,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.edit_outlined,
                            size: 18,
                            color: greenColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Imshuvo97@gmail.com',
                        style: normalTextStyle.copyWith(
                          fontSize: 16,
                          color: darkGreyColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            ProfileInfo('iOrder.png', 'Orders'),
            Divider(),
            ProfileInfo('iDetail.png', 'My Details'),
            Divider(),
            ProfileInfo('iAddress.png', 'Delivery Address'),
            Divider(),
            ProfileInfo('iPayment.png', 'Payment Methods'),
            Divider(),
            ProfileInfo('iPromo.png', 'Promo Cord'),
            Divider(),
            ProfileInfo('iNotif.png', 'Notifications'),
            Divider(),
            ProfileInfo('iHelp.png', 'Help'),
            Divider(),
            ProfileInfo('iAbout.png', 'About'),
            Divider(),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: FlatButton(
                onPressed: () {},
                color: lightGreyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logout.png',
                      width: 18,
                      height: 18,
                    ),
                    Text(
                      'Log Out',
                      style: normalTextStyle.copyWith(
                          fontSize: 18, color: greenColor),
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
