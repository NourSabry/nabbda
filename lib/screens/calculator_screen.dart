import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/screens/ASCVDRisk.dart';
import 'package:nabbda/screens/atherosclerosis_risk_screen.dart';
import 'package:nabbda/screens/bmi_screen.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/card_calculator_screen.dart';
import 'package:nabbda/screens/bmr_screen.dart';
import 'package:nabbda/screens/diabetes_risk_screen.dart';
import 'package:nabbda/screens/hear_risk_screen.dart';
import 'package:nabbda/screens/stroke_risk.dart';

class CalculatorScreen extends StatelessWidget {
  final List<String> label = [
    "Body Mass\nIndex (BMI)",
    "Diabetes Risk",
    "Calories\nCalculator (BMR)",
    "Heart Risk",
    "Atherosclerosis\nRisk ",
    "Stroke Risk",
    "ASCVD Risk ",
    "qxmd calculator"
  ];
  final List<String> images = [
    "assets/images/calc1.svg",
    "assets/images/calc2.svg",
    "assets/images/calc3.svg",
    "assets/images/heart1.svg",
    "assets/images/arteries.svg",
    "assets/images/Stroke.svg",
    "assets/images/ASCVD.svg",
    "assets/images/qxmd.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Calculator",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: label.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (ctx, index) => CardCalculatorScreen(
                  label: label[index],
                  image: images[index],
                  function: () {
                    if (index == 0) {
                      Get.to(() => BMIScreen());
                    } else if (index == 1) {
                      Get.to(()=>DiabetesRisk());
                    } else if (index == 2) {
                      Get.to(() => BmrScreen());
                    } else if (index == 3) {
                      Get.to(() => HeartRiskScreen());
                    } else if (index == 4) {
                      Get.to(() => AtherosclerosisRiskScreen());
                    } else if (index == 5) {
                      Get.to(() => StrokeRiskScreen());
                    } else if (index == 6) {
                      Get.to(() => ASCVDRisk());
                    } else if (index == 7) {}
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

