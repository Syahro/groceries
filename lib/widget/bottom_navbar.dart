import 'package:flutter/material.dart';
import 'package:groceries/pages/explore_page.dart';
import 'package:groceries/pages/home_page.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/menu_botom_nav.dart';

class BottomNavbar extends StatelessWidget {
  final bool isStore;
  final bool isExplore;
  final bool isCart;
  final bool isFavorite;
  final bool isAccount;

  BottomNavbar({
    this.isStore,
    this.isExplore,
    this.isCart,
    this.isFavorite,
    this.isAccount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: MenuBottomNav(
                imageUrl: 'shope.png',
                widthIcon: 24.0,
                heightIcon: 24.0,
                title: 'Store',
                isActive: isStore,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExplorePage();
                    },
                  ),
                );
              },
              child: MenuBottomNav(
                imageUrl: 'explore.png',
                widthIcon: 28.35,
                heightIcon: 18.21,
                title: 'Explore',
                isActive: isExplore,
              ),
            ),
            MenuBottomNav(
              imageUrl: 'cart.png',
              widthIcon: 21.97,
              heightIcon: 19.56,
              title: 'Cart',
              isActive: isCart,
            ),
            MenuBottomNav(
              imageUrl: 'favorite.png',
              widthIcon: 24,
              heightIcon: 24,
              title: 'Favourite',
              isActive: isFavorite,
            ),
            MenuBottomNav(
              imageUrl: 'account.png',
              widthIcon: 24,
              heightIcon: 24,
              title: 'Account',
              isActive: isAccount,
            ),
          ],
        ),
      ),
    );
  }
}
