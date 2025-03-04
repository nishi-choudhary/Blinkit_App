import 'package:blinkit_clone1/repository/widgets/uihelper.dart';
import 'package:blinkit_clone1/screens/cart/cartscreen.dart';
import 'package:blinkit_clone1/screens/category/categoryscreen.dart';
import 'package:blinkit_clone1/screens/home/homescreen.dart';
import 'package:blinkit_clone1/screens/print/printscreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Bottomnavscreen extends StatefulWidget {
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "home 1.png"), label: "Home"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "category 1.png"),
              label: "Category"),
          BottomNavigationBarItem(
              icon: UiHelper.CustomImage(img: "printer 1.png"),
              label: "Printer")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
