import 'package:flutter/material.dart';

import '../theme.dart';

class FilterData extends StatelessWidget {
  final String name;
  final bool isActive;

  FilterData(
    this.name,
    this.isActive,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: isActive ? greenColor : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? greenColor : darkGreyColor,
            ),
          ),
          child: Center(
            child: isActive
                ? Icon(
                    Icons.done,
                    color: whiteColor,
                    size: 17,
                  )
                : Container(),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          name,
          style: normalTextStyle.copyWith(
            fontSize: 16,
            color: isActive ? greenColor : darkGreyColor,
          ),
        ),
      ],
    );
  }
}
