import 'package:flutter/material.dart';
import 'package:groceries/pages/login_page.dart';
import 'package:groceries/theme.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 77, 25, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/icon_color.png',
                      width: 48,
                      height: 56,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Sign Up',
                    style: boldTextStyle.copyWith(
                      fontSize: 20,
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your credentials to continue',
                    style: normalTextStyle.copyWith(
                      fontSize: 15,
                      color: darkColor.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Usename',
                    style: normalTextStyle.copyWith(
                      fontSize: 15,
                      color: darkColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Afsar Hossen Shuvo',
                    style: normalTextStyle.copyWith(
                      fontSize: 18,
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    style: normalTextStyle.copyWith(
                      fontSize: 15,
                      color: darkColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'imshuvo97@gmail.com',
                        style: normalTextStyle.copyWith(
                          fontSize: 18,
                          color: darkColor,
                        ),
                      ),
                      Icon(
                        Icons.done,
                        color: greenColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: normalTextStyle.copyWith(
                      fontSize: 15,
                      color: darkColor.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '***************',
                        style: normalTextStyle.copyWith(
                          fontSize: 18,
                          color: darkColor,
                        ),
                      ),
                      Icon(
                        Icons.visibility_off,
                        color: darkColor,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(),
                  SizedBox(
                    height: 15,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'By continuing you agree to our ',
                      style: normalTextStyle.copyWith(
                        fontSize: 13,
                        color: darkColor.withOpacity(0.7),
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms of Service ',
                          style: normalTextStyle.copyWith(
                            fontSize: 13,
                            color: greenColor,
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: normalTextStyle.copyWith(
                            fontSize: 13,
                            color: darkColor.withOpacity(0.7),
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: normalTextStyle.copyWith(
                            fontSize: 13,
                            color: greenColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: FlatButton(
                      onPressed: () {},
                      color: greenColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'Sign Up',
                        style: normalTextStyle.copyWith(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: normalTextStyle.copyWith(
                          fontSize: 13,
                          color: darkColor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: normalTextStyle.copyWith(
                            fontSize: 13,
                            color: greenColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
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
