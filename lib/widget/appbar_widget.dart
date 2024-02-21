import 'package:flutter/material.dart';

import 'badge_widget.dart';

class AppbarWidget extends AppBar {
  AppbarWidget()
      : super(
          backgroundColor: Color(0xFFF3F3F3),
          title: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              width: 10,
            ),
            const Text(
              "내 플랜",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 11,
            ),
            BadgeWidget(
              badgeText: "요약",
            )
          ]),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.grey,
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        );
}
