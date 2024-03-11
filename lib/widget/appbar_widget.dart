import 'package:flutter/material.dart';

import 'badge_widget.dart';

class AppbarWidget extends AppBar {
  BuildContext context;
  AppbarWidget({super.key, required this.context})
      : super(
          backgroundColor: Color(0xFFF3F3F3),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                onClick: () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  builder: (BuildContext context) {
                    return FractionallySizedBox(
                      heightFactor: 0.9,
                      child: Container(),
                    );
                  },
                ),
              ),
            ],
          ),
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
