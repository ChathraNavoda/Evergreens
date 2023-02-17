import 'package:bottom_bar/bottom_bar.dart';
import 'package:evergreens/constants/global_variable.dart';
import 'package:evergreens/homePage.dart';
import 'package:evergreens/updatePage.dart';
import 'package:flutter/material.dart';

import 'listPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentPage = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          UpdatePage(),
          ListPage(),
          Container(color: Colors.orange),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: GlobalVariables.darkGreenColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.add),
            title: Text('Add New'),
            activeColor: GlobalVariables.darkGreenColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.list_alt),
            title: Text('Plants'),
            activeColor: GlobalVariables.darkGreenColor,
          ),
          BottomBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: GlobalVariables.darkGreenColor,
          ),
        ],
      ),
    );
  }
}
