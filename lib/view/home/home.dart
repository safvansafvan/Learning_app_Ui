import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/controller/core/sizes.dart';

import 'package:loginhomemt/view/widget/app_bar.dart';
import 'package:loginhomemt/view/widget/bottom_widget.dart';
import 'package:loginhomemt/view/widget/courses_widget.dart';
import 'package:loginhomemt/view/widget/tab_bar.dart';
import 'package:loginhomemt/view/widget/testimonal_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      animationDuration: const Duration(milliseconds: 300),
      initialIndex: 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const AppBarWidget(),
              Positioned(
                top: 80,
                left: MediaQuery.of(context).size.width / 2 + 50,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/w.webp'),
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover),
                    border: Border.all(color: AppColors.red),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const HomeTabBarWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildRatingAttendece(color: AppColors.grey, index: 1),
                        _buildRatingAttendece(color: AppColors.grey, index: 2)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 25, right: 25, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Our Courses',
                          style: CustomFunctions.style(
                              fontWeight: FontWeight.w600, size: 16),
                        ),
                        Text(
                          'Sea all',
                          style: CustomFunctions.style(
                              fontWeight: FontWeight.w600,
                              size: 15,
                              color: AppColors.red),
                        )
                      ],
                    ),
                  ),
                  AppSizes.height10,
                  const CoursesWidget(),
                  AppSizes.height10,
                  const TestimonalWidget()
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}

Widget _buildRatingAttendece({required Color color, int? index}) {
  return Container(
    width: 150,
    height: 60,
    decoration: BoxDecoration(
      color: AppColors.container,
      borderRadius: BorderRadius.only(
          bottomLeft: index == 1 ? const Radius.circular(10) : Radius.zero,
          bottomRight: index == 2 ? const Radius.circular(10) : Radius.zero),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          height: 18,
          index == 1 ? 'assets/images/star.png' : 'assets/images/paste.png',
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        AppSizes.width10,
        Text(
          index == 1 ? 'Rating' : 'Attendece',
          style: CustomFunctions.style(fontWeight: FontWeight.w500, size: 16),
        )
      ],
    ),
  );
}
