import 'package:flutter/material.dart';
import 'package:sang/widget/badge2_widget.dart';
import 'package:sang/widget/badge_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 108,
          child: BadgeWidget2(badgeText: "요약"),
        ),
      ),
    );
  }
}
