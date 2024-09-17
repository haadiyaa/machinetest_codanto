import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle loginTitle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle textFieldHint = TextStyle(
    fontSize: 14.0,
    color: AppColors.textGrey,
  );

  static const TextStyle forgotPassword = TextStyle(
    fontSize: 12.0,
    color: AppColors.forgotPassword,
    decoration: TextDecoration.underline,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );
}
