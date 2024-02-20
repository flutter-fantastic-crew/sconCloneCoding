import 'package:flutter/material.dart';
import 'package:sang/entity/plan_data_entity.dart';
import 'package:sang/entity/plan_history_entity.dart';

class HomePageViewModel with ChangeNotifier {
  final List<PlanDataEntity> _plans = [
    PlanDataEntity(
        planId: 0,
        planStartDate: DateTime.now(),
        planEndDate: DateTime.now(),
        planMemo: "메모메모",
        planName: "계획 이름",
        planIcon: "아이콘",
        planHistory: [
          PlanHistoryEntity(
            planHistoryId: 0,
            memo: "메모메모",
            createAt: DateTime.now(),
            expenses: 100,
          ),
          PlanHistoryEntity(
            planHistoryId: 1,
            memo: "메모메모1",
            createAt: DateTime.now(),
            expenses: 200,
          )
        ],
        totalPlan: 1000)
  ];
  List<PlanDataEntity> get plans => _plans;

  void addPlan(PlanDataEntity plan) {
    _plans.add(plan);
    notifyListeners();
  }
}
