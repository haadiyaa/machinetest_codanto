import 'package:flutter/material.dart';

class AppConstants {
  static const String logo='assets/images/splash1.png';

  static List<Map<String, dynamic>> bottomNavItems = [
    {'icon': Icons.chat_bubble_outline, 'label': 'Chat'},
    {'icon': Icons.group, 'label': 'Members'},
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.layers, 'label': 'Resources'},
    {'icon': Icons.photo, 'label': 'Gallery'},
  ];

  static final List<Map<String, dynamic>> drawerItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.info_outline, 'label': 'About Us'},
    {'icon': Icons.lock_outline, 'label': 'Change Password'},
    {'icon': Icons.article_outlined, 'label': 'Terms and Conditions'},
    {'icon': Icons.privacy_tip_outlined, 'label': 'Privacy Policy'},
    {'icon': Icons.logout, 'label': 'Logout'},
  ];
}