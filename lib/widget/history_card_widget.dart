import 'package:flutter/material.dart';
import 'package:sang/entity/plan_data_entity.dart';

class HistoryCardWidget extends StatelessWidget {
  PlanDataEntity planDataEntity;

  HistoryCardWidget({super.key, required this.planDataEntity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(planDataEntity.planIcon),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planDataEntity.planName,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFB4B4B4),
                ),
              ),
              Text(
                "${planDataEntity.totalPlan.toString()}원",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Text("${planDataEntity.remainExpenses}원",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: planDataEntity.remainExpenses < 0
                    ? Colors.red
                    : Colors.black)),
        const SizedBox(
          width: 13,
        ),
        Text(
          planDataEntity.remainExpenses < 0 ? "초과" : "남음",
        ),
      ],
    );
  }
}
