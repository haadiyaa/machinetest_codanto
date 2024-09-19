import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar(
      {super.key, required this.bottomNavItems, required this.currentIndex});
  final List bottomNavItems;
  int currentIndex;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  void _onTabTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(widget.bottomNavItems.length, (index) {
          bool isSelected = widget.currentIndex == index;
          return GestureDetector(
            onTap: () => _onTabTapped(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              decoration: isSelected
                  ? BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    )
                  : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    widget.bottomNavItems[index]['icon'],
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.bottomNavItems[index]['label'],
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
