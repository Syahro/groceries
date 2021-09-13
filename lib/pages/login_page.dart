import 'package:flutter/material.dart';
import 'package:groceries/pages/home_page.dart';
import 'package:groceries/pages/signup_page.dart';
import 'package:groceries/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            25,
            77,
            25,
            0,
          ),
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
                'Loging',
                style: semiBoldTextStyle.copyWith(
                  fontSize: 20,
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Enter your emails and password',
                style: normalTextStyle.copyWith(
                  fontSize: 15,
                  color: darkColor.withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 40,
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
              Text(
                'imshuvo97@gmail.com',
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: normalTextStyle.copyWith(
                      fontSize: 12,
                      color: darkColor.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 55,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {},
                      ),
                    );
                  },
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Log In',
                    style: semiBoldTextStyle.copyWith(
                      fontSize: 15,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: normalTextStyle.copyWith(
                      fontSize: 12,
                      color: darkColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Singup',
                      style: normalTextStyle.copyWith(
                        fontSize: 12,
                        color: greenColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
