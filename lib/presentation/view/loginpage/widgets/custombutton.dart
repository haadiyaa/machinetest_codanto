import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:codanto_test/core/constants/apptextstyles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppDimensions.borderRadiusSmall),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,style: AppTextStyles.buttonText,),
      ),
    );
  }
}
