import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';

class AuthBG extends StatelessWidget {
  const AuthBG({super.key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height / 3.5,
      width: screenSize.width,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1,
          colors: [
            AppColors.appBar2,
            AppColors.appBar1,
          ],
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(screenSize.width, 100.0),
        ),
      ),
    );
  }
}
