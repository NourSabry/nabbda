import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreen.dart';
import 'package:nabbda/NavigationBarScreens/MedicationScreens/MedicationsScreen.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/CalculatorScreen.dart';
import 'package:nabbda/icons/NavigationIcons.dart';
import 'package:nabbda/screens/profile_screen.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    MedicationsScreen(),
    CalculatorScreen(),
    ProfileScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Color(0xFF3B3C55)),
        selectedLabelStyle: TextStyle(color: Color(0xFF3B3C55)),
        unselectedIconTheme: IconThemeData(color: Color(0xFF3B3C55)),
        selectedIconTheme: IconThemeData(color: Color(0xFF3B3C55)),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF3B3C55),
            icon: Icon(NavigationBarIcons.Home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(NavigationBarIcons.Medications), label: "Medications"),
          BottomNavigationBarItem(
              icon: Icon(NavigationBarIcons.Calc), label: "Calculator"),
          BottomNavigationBarItem(
              icon: Icon(NavigationBarIcons.Profile), label: "Profile"),
        ],
      ),
    );
  }
}
