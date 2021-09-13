import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.chevron_right),
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
                    color: darkColor,
                  ),
                ],
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                'Enter your 4-digit code',
                style: boldTextStyle.copyWith(
                  fontSize: 20,
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                'Code',
                style: normalTextStyle.copyWith(
                  fontSize: 16,
                  color: darkColor.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 1,
                    color: darkColor.withOpacity(0.5),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '- - - -',
                    style: normalTextStyle.copyWith(
                      fontSize: 18,
                      color: darkColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    'Resend Code',
                    style: normalTextStyle.copyWith(
                      fontSize: 16,
                      color: greenColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
