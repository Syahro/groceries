import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class NumberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.chevron_right,
          color: whiteColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.chevron_left,
                  ),
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                'Enter your mobile number',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 20,
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                'Mobile Number',
                style: normalTextStyle.copyWith(
                  fontSize: 16,
                  color: darkColor.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/nation.png',
                    width: 30,
                    height: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '+880',
                    style: mediumTextStyle.copyWith(
                        fontSize: 18, color: darkColor),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
