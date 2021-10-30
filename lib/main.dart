import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:nabbda/NavigationBarScreens/NavigationBar.dart';
=======
import 'package:nabbda/NavigationBar.dart';
>>>>>>> hesham

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
