import 'package:blinkit/repositories/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/repositories/screens/cart/cartscreen.dart';
import 'package:blinkit/repositories/screens/category/categoryscreen.dart';
import 'package:blinkit/repositories/screens/home/homescreen.dart';
import 'package:blinkit/repositories/screens/print/printscreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List<Widget> pages = [HomeScreen(), CartScreen(), Category(), PrintScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home1.png")),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "category1.png"),
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "shopping-bag1.png"),
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "printer1.png"),
          ),
        ],
      ),
    );
  }
}
