import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle loginTitle = TextStyle(
    fontSize:AppDimensions.heightXLarge,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle textFieldHint = TextStyle(
    fontSize: 14.0,
    color: AppColors.textGrey,
  );

  static const TextStyle forgotPassword = TextStyle(
    fontSize: 14.0,
    color: AppColors.forgotPassword,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle drawerItems = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
  static const TextStyle DrawerHeadText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
}
