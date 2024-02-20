import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sang/view_model/home_page_view_model.dart';
import 'package:sang/widget/appbar_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Center(
        child: ChangeNotifierProvider<HomePageViewModel>(
          create: (_) => HomePageViewModel(),
          child: Consumer<HomePageViewModel>(
              builder: (context, homePageViewModel, child) {
            return Column(
              children: homePageViewModel.plans
                  .map(
                    (plan) => Text(
                        "${plan.planName} ::: totalExpenses: ${plan.totalExpenses}"),
                  )
                  .toList(),
            );
          }),
        ),
      ),
    );
  }
}
