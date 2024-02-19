import 'package:flutter/material.dart';
import 'package:sang/widget/appbar_widget.dart';
import 'package:sang/widget/badge_widget.dart';
import 'package:sang/widget/badge_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: const Center(
        child: SizedBox(
          width: 108,
          child: Text(""),
        ),
      ),
    );
  }
}
