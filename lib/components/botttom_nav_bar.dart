import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey[900],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 80,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home, text: "Shop"),

          GButton(icon: Icons.shopping_bag_rounded, text: "Cart"),
        ],
      ),
    );
  }
}
