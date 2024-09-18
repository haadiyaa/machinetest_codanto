import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appconstants.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height*0.55,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppDimensions.borderRadiusLarge),
                bottomRight: Radius.circular(AppDimensions.borderRadiusLarge),
              ),
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.background,
                  AppColors.primary,
                ],
              ),
            ),
            child: const Image(
              image: AssetImage(AppConstants.logo),
            ),
          ),
        ],
      ),
    );
  }
}
