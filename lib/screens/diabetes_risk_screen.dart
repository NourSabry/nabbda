import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/diabetes_test_screen.dart';

class DiabetesRisk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AppbarWithLabelAndIcon(
          function: () {
            Get.back();
          },
          label: "Diabetes Risk",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
          child: Material(
            color: K.WhiteColor,
            borderRadius: BorderRadius.circular(15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Diabetes Risk Calculator?",
                          style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10),
                      Text(
                          "It is a calculator used to assess the risk of developing type 2 diabetes, and it depends on the sex, age and weight of the person, his use of high blood pressure medication or not, family history of diabetes, and smoking.",
                          style: TextStyle(
                              color: Color(0xFF707070), fontSize: 14)),
                      SizedBox(height: 10),
                      Text(
                          "To find out your risk of developing type 2 diabetes in the next five years, please answer the questions on the following test ",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
                RegisterButton(
                  label: "Start Test",
                  function: () {
                    Get.to(() => DiabetesTest());
                  },
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
