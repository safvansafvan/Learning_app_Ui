import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: TabBar(
        tabs: const [
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text('Rent'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text('e-attendence'),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Text('Ride'),
          )
        ],
        padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const AlwaysScrollableScrollPhysics(),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppColors.color,
        indicatorWeight: 3,
        dividerColor: AppColors.color,
        unselectedLabelColor: AppColors.grey,
        labelStyle: CustomFunctions.tabBar(),
      ),
    );
  }
}
