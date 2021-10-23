import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBar.dart';
import 'package:nabbda/screens/HomeScreen.dart';
import 'package:nabbda/screens/health_interest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBar(),
    );
  }
}
