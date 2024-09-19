import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double gridPadding = screenWidth * 0.05;
    double gridSpacing = screenWidth * 0.04;
    double iconSize = screenWidth * 0.12; 
    double containerSize = screenWidth * 0.4;

    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: gridPadding),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: gridSpacing,
              crossAxisSpacing: gridSpacing,
              crossAxisCount: screenWidth < 600 ? 2 : 3,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(gridSpacing),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: AppDimensions.borderRadiusSmall,
                      color: AppColors.textGrey,
                    ),
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(screenWidth * 0.03), 
                ),
                child: Column(
                  children: [
                    Container(
                      height: containerSize * 0.5,
                      width: containerSize * 0.5,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 159, 159),
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                      ),
                      child: Icon(
                        Icons.image,
                        color: AppColors.primary,
                        size: iconSize,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'Data',
                      style: TextStyle(
                        fontSize: screenHeight * 0.02,
                      ),
                    )
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
