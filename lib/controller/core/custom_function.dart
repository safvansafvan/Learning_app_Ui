import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';

class CustomFunctions {
  static TextStyle style(
      {required FontWeight fontWeight, required double size, Color? color}) {
    return TextStyle(
      fontFamily: 'ProximaNova',
      fontWeight: fontWeight,
      fontSize: size,
      color: color ?? AppColors.black,
    );
  }
}
