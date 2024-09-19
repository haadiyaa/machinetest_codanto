import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Home'),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.heightXLarge),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: AppDimensions.heightLarge,
              crossAxisSpacing: AppDimensions.heightLarge,
              crossAxisCount: 2,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(AppDimensions.heightLarge),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: AppDimensions.borderRadiusSmall,
                      color: AppColors.textGrey,
                    ),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      AppDimensions.heightMedium,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 159, 159),
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppDimensions.heightSmall),
                        ),
                      ),
                      child: const Icon(
                        Icons.image,
                        color: AppColors.primary,
                        size: 50,
                      ),
                    ),
                    Text('data')
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
