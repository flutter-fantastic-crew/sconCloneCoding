import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleCardWidget extends Container {
  TitleCardWidget({
    required String title,
    required String desc,
    Color? descColor,
  }) : super(
          height: 85,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, top: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: descColor ?? Colors.black),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(12),
          ),
        );
}
