import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.label, required this.onPressed});
  final String label;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: context.width - 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 1.5,
            colors: [
              AppColors.appBar2,
              AppColors.appBar1,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              label,
              style: CustomFunctions.style(
                  fontWeight: FontWeight.w600,
                  size: 20,
                  color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
