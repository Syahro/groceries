import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/banner.png',
              width: 364,
              height: 258,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Get your groceries\nwith nectar.',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 26,
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/nation.png',
                        width: 28,
                        height: 19,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '+880',
                        style: normalTextStyle.copyWith(
                          fontSize: 16,
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or connect with social media',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 14,
                          color: darkColor.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {},
                      color: blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            width: 22,
                            height: 24,
                          ),
                          Text(
                            'Continue with Google',
                            style: normalTextStyle.copyWith(
                              fontSize: 18,
                              color: whiteColor,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {},
                      color: darkBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/facebook.png',
                            width: 11.71,
                            height: 24,
                          ),
                          Text(
                            'Continue with Facebook',
                            style: normalTextStyle.copyWith(
                              fontSize: 18,
                              color: whiteColor,
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
