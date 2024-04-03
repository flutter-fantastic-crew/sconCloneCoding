import 'package:flutter/material.dart';
import 'package:sang/entity/plan_data_entity.dart';
import 'package:sang/entity/plan_history_entity.dart';

class HomePageViewModel with ChangeNotifier {
  final planSliderController = PageController(initialPage: 0);

  final List<PlanDataEntity> _plans = [
    PlanDataEntity(
        planId: 0,
        planStartDate: DateTime.now(),
        planEndDate: DateTime.now(),
        planMemo: "메모1메모1",
        planName: "계획1이름1",
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
        totalPlan: 1000),
    PlanDataEntity(
        planId: 0,
        planStartDate: DateTime.now(),
        planEndDate: DateTime.now(),
        planMemo: "메모2메모2",
        planName: "계획2이름2",
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
            expenses: 500,
          )
        ],
        totalPlan: 1000)
  ];
  List<PlanDataEntity> get plans => _plans;

  int _currentPage = 0;
  int get currentPage => _currentPage;

  // 총 소비
  int get totalPlanExpenses =>
      plans.map((e) => e.totalExpenses).reduce((sum, value) => sum + value);

  // 총 수입
  int get totalPlanIncome => 0;

  // 남은 총 예산
  int get remainTotalBudget =>
      totalBudget + totalPlanIncome - totalPlanExpenses;

  // 총 예산
  int get totalBudget =>
      plans.map((e) => e.totalPlan).reduce((sum, element) => sum + element);

  void changePage(int currentPage) {
    _currentPage = currentPage;
    notifyListeners();
  }

  void addPlan(PlanDataEntity plan) {
    _plans.add(plan);
    notifyListeners();
  }
}
