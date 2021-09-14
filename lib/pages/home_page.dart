import 'package:flutter/material.dart';
import 'package:groceries/pages/search_page.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/bottom_navbar.dart';
import 'package:groceries/widget/groceries_card.dart';
import 'package:groceries/widget/item_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: BottomNavbar(
        isStore: true,
        isExplore: false,
        isCart: false,
        isFavorite: false,
        isAccount: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 23,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/icon_color.png',
                      width: 26,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Dhaka, Banassre',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 18,
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SearchPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        right: 23,
                      ),
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
                              width: 7,
                            ),
                            Text(
                              'Search Store',
                              style: normalTextStyle.copyWith(
                                fontSize: 14,
                                color: darkGreyColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 114,
                    width: double.infinity,
                    margin: EdgeInsets.only(right: 23),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/banner_home.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exclusive Offer',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 22,
                            color: darkColor,
                          ),
                        ),
                        Text(
                          'See all',
                          style: normalTextStyle.copyWith(
                            fontSize: 15,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemCard(
                          imageUrl: 'banana.png',
                          name: 'Organic Bananas',
                          description: '7 pcs, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'apple.png',
                          name: 'Red Apple',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'banana.png',
                          name: 'Organic Bananas',
                          description: '7 pcs, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 23,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Selling',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 24,
                            color: darkColor,
                          ),
                        ),
                        Text(
                          'See all',
                          style: normalTextStyle.copyWith(
                            fontSize: 15,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemCard(
                          imageUrl: 'pepper.png',
                          name: 'Bell Pepper Red',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'ginger.png',
                          name: 'Ginger',
                          description: '250 gm, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'pepper.png',
                          name: 'Bell Pepper Red',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Groceries',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 24,
                            color: darkColor,
                          ),
                        ),
                        Text(
                          'See all',
                          style: normalTextStyle.copyWith(
                            fontSize: 15,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GroceriesCard('pulses.png', 'Pulses', ametColor),
                        SizedBox(
                          width: 14,
                        ),
                        GroceriesCard('rice.png', 'Rice', greenColor),
                        SizedBox(
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ItemCard(
                          imageUrl: 'beef.png',
                          name: 'Beef Bone',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'chicken.png',
                          name: 'Broller Chicken',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemCard(
                          imageUrl: 'beef.png',
                          name: 'Beef Bone',
                          description: '1 kg, priceg',
                          price: '4.99',
                        ),
                        SizedBox(
                          width: 23,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
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
