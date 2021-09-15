import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';
import 'package:groceries/widget/filter_data.dart';

class Filterpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.close,
                        ),
                        Text(
                          'Filters',
                          style: semiBoldTextStyle.copyWith(
                            fontSize: 20,
                            color: darkColor,
                          ),
                        ),
                        Container(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: lightGreyColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Text(
                      'Categories',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 24,
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    FilterData('Eggs', true),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData('Noodles & Pasta', false),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData('Chips & Crisps', false),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData('Fast Food', false),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Brand',
                      style: semiBoldTextStyle.copyWith(
                        fontSize: 24,
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    FilterData(
                      'Individual Collection',
                      false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData('Cocola', true),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData('Ifad', false),
                    SizedBox(
                      height: 20,
                    ),
                    FilterData(
                      'Kazi Farmas',
                      false,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        color: greenColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Apply Filter',
                          style: normalTextStyle.copyWith(
                            fontSize: 18,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    )
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
