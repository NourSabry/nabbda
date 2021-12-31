import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/screens/Home.dart';
import 'package:nabbda/screens/enter_code_screen.dart';
import 'package:nabbda/screens/forget_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
