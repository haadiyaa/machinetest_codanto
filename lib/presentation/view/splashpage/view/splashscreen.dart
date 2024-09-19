import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appconstants.dart';
import 'package:codanto_test/presentation/view/adminhome/view/adminhome.dart';
import 'package:codanto_test/presentation/view/loginpage/view/loginpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: FlutterSplashScreen.fadeIn(
        childWidget: SizedBox(
          height: size.width * 0.8,
          width: size.width * 0.8,
          child: Image(
            image: AssetImage(AppConstants.logo),
          ),
        ),
        onAnimationEnd: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => LoginPage(),
            ),
          );
        },
      ),
    );
  }
}
