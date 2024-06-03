import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

// ignore: must_be_immutable
class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.pink[200],
        tabBackgroundColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.home,
          text:  "Home",),
          GButton(icon: Icons.shopping_bag_rounded,
          text:  "Cart",),
        ],
      ),
    );
  }
}