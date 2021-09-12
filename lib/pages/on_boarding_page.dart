import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/delivery.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/icon.png',
                    width: 48,
                    height: 56,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Welcome\nto our store',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 48,
                      color: whiteColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: normalTextStyle.copyWith(
                      fontSize: 16,
                      color: whiteColor.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - (2 * 30.5),
                    height: 50,
                    child: FlatButton(
                      onPressed: () {},
                      color: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Text(
                        'Get Started',
                        style: semiBoldTextStyle.copyWith(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    darkColor.withOpacity(0.6),
                    Colors.transparent,
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
