import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/screens/calculator_screen.dart';
import 'package:nabbda/screens/medications_screen.dart';
import 'package:nabbda/controller/base_controller.dart';
import 'package:nabbda/screens/home_screen.dart';
import 'package:nabbda/screens/profile_screen.dart';

class Home extends StatelessWidget {
  final _controller = Get.put(BaseController());

  final List<Widget> Screens = [
    HomeScreen(),
    MedicationsScreen(),
    CalculatorScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(child: Screens[_controller.index])),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            unselectedLabelStyle: TextStyle(color: Color(0xFF3B3C55)),
            selectedLabelStyle: TextStyle(color: Color(0xFF6E78F7)),
            unselectedIconTheme: IconThemeData(color: Color(0xFF3B3C55)),
            selectedIconTheme: IconThemeData(color: Color(0xFF6E78F7)),
            type: BottomNavigationBarType.fixed,
            currentIndex: _controller.index,
            onTap: (index) {
              _controller.onTab(index);
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF6E78F7),
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Medications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: "Calculator"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
          )),
    );
  }
}
