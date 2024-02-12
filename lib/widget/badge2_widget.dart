import 'package:flutter/material.dart';

class BadgeWidget2 extends Container {
  BadgeWidget2({required this.badgeText})
      : super(
          height: 66,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffB1B1B1),
          ),
          alignment: Alignment.center,
          child: Text(
            badgeText,
            style: TextStyle(fontSize: 40, color: Color(0xffffffff)),
          ),
        );

  final String badgeText;
}
