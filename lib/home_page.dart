import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sang/view_model/home_page_view_model.dart';
import 'package:sang/widget/appbar_widget.dart';

import 'entity/plan_data_entity.dart';
import 'entity/plan_history_entity.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageViewModel>(
        create: (_) => HomePageViewModel(),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: const Color(0xFFF3F3F3),
            appBar: AppbarWidget(context: context),
            body: SafeArea(
              child: Column(
                children: [
                  Consumer<HomePageViewModel>(
                      builder: (context, homePageViewModel, child) {
                    return Expanded(
                      child: PageView.builder(
                          onPageChanged: homePageViewModel.changePage,
                          controller: homePageViewModel.planSliderController,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(50),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: double.infinity,
                                      child: Text(homePageViewModel
                                          .plans[index].planName)),
                                  Column(
                                    children: [
                                      const Text(
                                        "소비 금액",
                                        style:
                                            TextStyle(color: Color(0xffC4C4C6)),
                                      ),
                                      Text(
                                        "${homePageViewModel.plans[index].getTotalExpenses()}원",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      Text(
                                        "${homePageViewModel.plans[index].totalPlan}원",
                                        style: const TextStyle(
                                            color: Color(0xff15996A),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 60,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Color(0xFF1871FF),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15)), //글자색
                                            alignment: Alignment.center,
                                            textStyle: const TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold)),
                                        onPressed: () {
                                          homePageViewModel
                                              .addPlan(PlanDataEntity(
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
                                                        createAt:
                                                            DateTime.now(),
                                                        price: 100,
                                                        planType:
                                                            PlanType.expenses),
                                                    PlanHistoryEntity(
                                                        planHistoryId: 1,
                                                        memo: "메모메모1",
                                                        createAt:
                                                            DateTime.now(),
                                                        price: 500,
                                                        planType:
                                                            PlanType.income)
                                                  ],
                                                  totalPlan: 1000));
                                        },
                                        child: const Text(
                                          "내역 추가",
                                        )),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: homePageViewModel.plans.length),
                    );
                  }),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                          context.watch<HomePageViewModel>().plans.length,
                          (index) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: CircleAvatar(
                                  radius: 8,
                                  backgroundColor: context
                                              .watch<HomePageViewModel>()
                                              .currentPage ==
                                          index
                                      ? const Color(0xFF181818)
                                      : Colors.grey,
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
