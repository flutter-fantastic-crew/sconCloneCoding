import 'package:flutter/material.dart';
import 'package:sang/entity/plan_history_entity.dart';

class PlanDataEntity {
  int planId; // 플랜아이디
  DateTime planStartDate; // 플랜 시작일
  DateTime planEndDate; // 플랜 종료일
  String planMemo; // 플랜 설명 (메모)
  String planName; // 플랜 이름
  String planIcon; // 플랜 아이콘
  List<PlanHistoryEntity> planHistory; // 플랜예산 기록 리스트
  int totalPlan; // 총금액

  PlanDataEntity(
      {required this.planId,
      required this.planStartDate,
      required this.planEndDate,
      required this.planMemo,
      required this.planName,
      required this.planIcon,
      required this.planHistory,
      required this.totalPlan});

  int get totalExpenses =>
      planHistory.map((e) => e.expenses).reduce((sum, value) => sum + value);
}
