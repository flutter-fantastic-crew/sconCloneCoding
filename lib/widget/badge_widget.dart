import 'package:flutter/material.dart';

class BadgeWidget extends Container {
  Function? onClick;

  BadgeWidget({required this.badgeText, this.onClick})
      : super(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffB1B1B1),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                if (onClick != null) {
                  onClick();
                }
              },
              child: Text(
                badgeText,
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );

  final String badgeText;
}
