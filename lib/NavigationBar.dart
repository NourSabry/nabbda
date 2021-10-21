import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/screens/HomeScreen.dart';
import 'package:nabbda/icons/NewHome.dart';
import 'package:nabbda/MedicationsScreen.dart';
import 'package:nabbda/CalculatorScreen.dart';
import 'package:nabbda/icons/Calculator.dart';
import 'package:nabbda/icons/Medications.dart';
import 'package:nabbda/icons/User.dart';
import 'package:nabbda/screens/profile_screen.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
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
        selectedLabelStyle: TextStyle(color: Color(0xFF6E78F7)),
        unselectedIconTheme: IconThemeData(color: Color(0xFF3B3C55)),
        selectedIconTheme: IconThemeData(color: Color(0xFF6E78F7)),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF6E78F7),
            icon: Icon(NewHome.newHome),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Medications.medications), label: "Medications"),
          BottomNavigationBarItem(
              icon: Icon(Calculator.calculator), label: "Calculator"),
          BottomNavigationBarItem(icon: Icon(User.user), label: "Profile"),
        ],
      ),
    );
  }
}
