import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedM  odeBanner: false,
      home: MedicalDocumentScreen(),
    );
  }
}
