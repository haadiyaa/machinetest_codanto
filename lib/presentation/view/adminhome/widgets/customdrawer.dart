import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appconstants.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:codanto_test/core/constants/apptextstyles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.drawerItems,
  });
  final List drawerItems;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.heightMedium,
            vertical: AppDimensions.heightXLarge),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.heightLarge,
                vertical: AppDimensions.heightSmall,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.circular(AppDimensions.borderRadiusSmall),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 40,
                  ),
                  SizedBox(
                    width: AppDimensions.heightSmall,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: AppTextStyles.forgotPassword,
                      ),
                      Text(
                        'Username',
                        style: AppTextStyles.DrawerHeadText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppDimensions.heightXLarge,
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimensions.heightMedium,
                        vertical: AppDimensions.heightSmall),
                    decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.heightSmall)),
                    margin: const EdgeInsets.only(
                        bottom: AppDimensions.heightMedium),
                    child: Row(
                      children: [
                        Icon(
                          AppConstants.drawerItems[index]['icon'],
                          size: 40,
                          color: AppColors.white,
                        ),
                        const SizedBox(
                          width: AppDimensions.heightSmall,
                        ),
                        Text(
                          AppConstants.drawerItems[index]['label'],
                          style: AppTextStyles.drawerItems,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
