import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/controller/core/sizes.dart';
import 'package:loginhomemt/view/widget/custom_cliper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomAppBarClipper(),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.5,
                      colors: [AppColors.appBar2, AppColors.appBar1])),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
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
                            Icon(Icons.search,
                                color: AppColors.white, size: 25),
                            AppSizes.width5,
                            Icon(Icons.g_translate,
                                color: AppColors.white, size: 25)
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
          ),
          Positioned(
            bottom: 45,
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
        ],
      ),
    );
  }
}
