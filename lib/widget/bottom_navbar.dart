import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/menu_botom_nav.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuBottomNav(
              imageUrl: 'shope.png',
              widthIcon: 24.0,
              heightIcon: 24.0,
              title: 'Store',
              isActive: true,
            ),
            MenuBottomNav(
              imageUrl: 'explore.png',
              widthIcon: 28.35,
              heightIcon: 18.21,
              title: 'Explore',
              isActive: false,
            ),
            MenuBottomNav(
              imageUrl: 'cart.png',
              widthIcon: 21.97,
              heightIcon: 19.56,
              title: 'Cart',
              isActive: false,
            ),
            MenuBottomNav(
              imageUrl: 'favorite.png',
              widthIcon: 24,
              heightIcon: 24,
              title: 'Favourite',
              isActive: false,
            ),
            MenuBottomNav(
              imageUrl: 'account.png',
              widthIcon: 24,
              heightIcon: 24,
              title: 'Account',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}