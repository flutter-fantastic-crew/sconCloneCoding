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
        Column(
          children: [
            Text(planDataEntity.planName),
            Text("${planDataEntity.totalPlan.toString()}원"),
          ],
        ),
        Text("${planDataEntity.remainExpenses}원"),
        Text(planDataEntity.remainExpenses < 0 ? "초과" : "남음"),
      ],
    );
  }
}
