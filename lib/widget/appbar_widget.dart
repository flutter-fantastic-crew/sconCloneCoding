import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sang/view_model/home_page_view_model.dart';
import 'package:sang/widget/history_card_widget.dart';
import 'package:sang/widget/title_card_widget.dart';
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
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  builder: (_) {
                    return FractionallySizedBox(
                      heightFactor: 0.9,
                      child: Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 30, left: 10, bottom: 25),
                                child: Text("요약",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: TitleCardWidget(
                                      title: "총 소비",
                                      desc:
                                          "${context.read<HomePageViewModel>().totalPlanExpenses}원",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TitleCardWidget(
                                      title: "총 수입",
                                      desc:
                                          "${context.read<HomePageViewModel>().totalPlanIncome}원",
                                      descColor: Color(0xFF128F65),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, top: 15, bottom: 15, right: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "남은 총 예산",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xFFB4B4B4),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "${context.read<HomePageViewModel>().remainTotalBudget}원",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "/ ${context.read<HomePageViewModel>().totalBudget}원",
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFFB4B4B4),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "플랜별 소비",
                                style: TextStyle(
                                  color: Color(0xFFB4B4B4),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ...context.read<HomePageViewModel>().plans.map(
                                    (planData) => HistoryCardWidget(
                                        planDataEntity: planData),
                                  )
                            ],
                          ),
                        ),
                      ),
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
