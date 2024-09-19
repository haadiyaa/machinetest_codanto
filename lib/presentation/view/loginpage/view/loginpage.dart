import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appconstants.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:codanto_test/core/constants/apptextstyles.dart';
import 'package:codanto_test/presentation/view/adminhome/view/adminhome.dart';
import 'package:codanto_test/presentation/view/loginpage/widgets/custombutton.dart';
import 'package:codanto_test/presentation/view/loginpage/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.5,
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
            const SizedBox(
              height: AppDimensions.heightLarge,
            ),
            const Text(
              'Login',
              style: AppTextStyles.loginTitle,
            ),
            const SizedBox(
              height: AppDimensions.heightLarge,
            ),
            SizedBox(
              width: size.width * 0.8,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Username/ Membership id'),
                    const SizedBox(
                      height: AppDimensions.heightSmall,
                    ),
                    CustomTextField(
                      nameController: nameController,
                      text: 'enter your username / membership id',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: AppDimensions.heightMedium,
                    ),
                    const Text('Password'),
                    const SizedBox(
                      height: AppDimensions.heightSmall,
                    ),
                    CustomTextField(
                      nameController: nameController,
                      text: 'enter your password',
                      validator: (value) {},
                    ),
                    const SizedBox(
                      height: AppDimensions.heightSmall,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: AppTextStyles.forgotPassword,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppDimensions.heightMedium,
                    ),
                    CustomButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>AdminHome()));
                      },
                    ),
                    const SizedBox(
                      height: AppDimensions.heightLarge,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
