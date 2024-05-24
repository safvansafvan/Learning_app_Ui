import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/view/auth/login.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/splash.json"),
            Text(
              "L E A R N I N G H U B",
              style: CustomFunctions.style(
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                  size: 16),
            )
          ],
        ),
      ),
    );
  }

  Future<void> navigate({context}) async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAll(() => const LoginView(),
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
        transition: Transition.zoom);
  }
}
