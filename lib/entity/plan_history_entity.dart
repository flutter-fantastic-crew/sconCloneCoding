class PlanHistoryEntity {
  int planHistoryId; // 예산기록 아이디
  int price; // 금액
  PlanType planType; // 소비, 수입 타입
  String memo; // 메모
  DateTime createAt; // 기록 남긴일

  PlanHistoryEntity({
    required this.planHistoryId,
    required this.price,
    required this.memo,
    required this.planType,
    required this.createAt,
  });
}

enum PlanType {
  expenses, // 소비
  income // 수입
}
