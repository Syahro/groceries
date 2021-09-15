import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class OrderSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/sukses.png',
                width: 269.08,
                height: 240.31,
              ),
              SizedBox(height: 55),
              Text(
                'Your Order has been\n accepted',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 28,
                  color: darkColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your items has been placcd and is on\nit’s way to being processed',
                style: normalTextStyle.copyWith(
                  fontSize: 14,
                  color: darkGreyColor.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * 25),
                child: FlatButton(
                  onPressed: () {},
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Track Order',
                    style: normalTextStyle.copyWith(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - (2 * 25),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Back to Home',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 18,
                      color: darkColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
