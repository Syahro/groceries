import 'package:flutter/material.dart';
import 'package:groceries/theme.dart';

class SelectLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(
                width: MediaQuery.of(context).size.width - (2 * 94),
                height: 171,
                child: Image.asset(
                  'assets/maps_icon.png',
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Select Your Location',
                style: mediumTextStyle.copyWith(
                  fontSize: 20,
                  color: darkColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Swithch on your location to stay in tune with\nwhat’s happening in your area',
                style: normalTextStyle.copyWith(
                  fontSize: 15,
                  color: darkColor.withOpacity(0.5),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    'Your Zone',
                    style: normalTextStyle.copyWith(
                      fontSize: 13,
                      color: darkColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Banasree',
                    style: normalTextStyle.copyWith(
                      fontSize: 13,
                      color: darkColor,
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Your Area',
                    style: normalTextStyle.copyWith(
                      fontSize: 13,
                      color: darkColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Types of your area',
                    style: normalTextStyle.copyWith(
                      fontSize: 13,
                      color: darkColor.withOpacity(0.4),
                    ),
                  ),
                  Icon(
                    Icons.expand_more,
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: FlatButton(
                  onPressed: () {},
                  color: greenColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Submit',
                    style: mediumTextStyle.copyWith(
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
    );
  }
}
