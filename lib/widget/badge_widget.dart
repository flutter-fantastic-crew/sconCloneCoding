import 'package:flutter/material.dart';

class BadgeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffB1B1B1),
      ),
      alignment: Alignment.center,
      child: const Text(
        "요약",
        style: TextStyle(fontSize: 40, color: Color(0xffffffff)),
      ),
    );
  }
}
