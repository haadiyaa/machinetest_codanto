import 'package:codanto_test/core/constants/appcolors.dart';
import 'package:codanto_test/core/constants/appconstants.dart';
import 'package:codanto_test/core/constants/appdimentions.dart';
import 'package:codanto_test/core/constants/apptextstyles.dart';
import 'package:codanto_test/presentation/view/adminhome/view/chat.dart';
import 'package:codanto_test/presentation/view/adminhome/view/home.dart';
import 'package:codanto_test/presentation/view/adminhome/widgets/customdrawer.dart';
import 'package:codanto_test/presentation/view/adminhome/widgets/customnavbar.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  final PageController _pageController = PageController(initialPage: 2);
  int currentIndex = 2;

  

  final List<Widget> _pages = [
    const Home(),
    const Chat(),
    const Home(),
    const Chat(),
    const Home(),
  ];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(drawerItems: [AppConstants.bottomNavItems],),
      appBar: AppBar(
        title: const Row(
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
                Text('Username'),
              ],
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: CustomNavBar(
        bottomNavItems: AppConstants.bottomNavItems,
        currentIndex: currentIndex,
      ),
    );
  }
}

