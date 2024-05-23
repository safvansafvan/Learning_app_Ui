import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/controller/core/sizes.dart';
import 'package:loginhomemt/view/widget/custom_cliper.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomAppBarClipper(),
      child: Container(
        height: 200.0,
        decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.5,
                colors: [AppColors.appBar2, AppColors.appBar1])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: AppColors.white),
                  Wrap(
                    children: [
                      Icon(Icons.search, color: AppColors.white, size: 25),
                      AppSizes.width5,
                      Icon(Icons.g_translate, color: AppColors.white, size: 25)
                    ],
                  )
                ],
              ),
              AppSizes.height10,
              Text(
                "Welcome Jeni,",
                style: CustomFunctions.style(
                    fontWeight: FontWeight.w600,
                    size: 25,
                    color: AppColors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/arrows.png',
                      height: 30,
                      width: 20,
                      color: AppColors.white,
                      fit: BoxFit.contain),
                  Text(
                    "Chennai, India",
                    style: CustomFunctions.style(
                        fontWeight: FontWeight.w500,
                        size: 14,
                        color: AppColors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
