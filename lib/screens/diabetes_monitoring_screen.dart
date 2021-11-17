import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_montring_screen.dart';

class DiabetesMonitoringScreen extends StatelessWidget {
  final List<String> label = [
    "Fasting Blood Glucose ",
    "Microalbuminuria",
    "HbA 1c",
    "Insulin level",
    "C-peptide",
    "Creatinine",
    "Blood Urea Nitrogen (BUN)",
    "Blood Ketones",
    "Proteins in Urine",
    "Weight",
    "Visual Acuity"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Diabetes Monitoring",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: label.length,
                    itemBuilder: (ctx, index) => Column(
                          children: [
                            ListTile(
                              onTap: () {
                                if (index == 0) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Fasting Blood Glucose ",
                                        nameOfScreen: "Fasting Blood Glucose ",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Low glucose can be dangerous, and high glucose\ncause complications.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Fasting Blood Glucose :",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 1) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Microalbuminuria",
                                        nameOfScreen: "Microalbuminuria",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "It is the amount of protein in urine. When increasing\nmay be the earliest sign of diabetic kidney damage. ",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Microalbuminuria :",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 2) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "HbA 1c",
                                        nameOfScreen: "HbA 1c",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "This is how your glucose is controlled in the\npast 3 months.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "HbA 1c:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 3) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Insulin level",
                                        nameOfScreen: "Insulin level",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "When it is low that means not enough insulin\nproduced by your body.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Insulin level:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 4) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "C-peptide",
                                        nameOfScreen: "C-peptide",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "C-peptide is a substance made in the pancreas,\nalong with insulin. When it is low it is associated\nWith a low level of insulin production.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "C-peptide:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 5) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Creatinine",
                                        nameOfScreen: "Creatinine",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Creatinine is a waste product produced by muscles\nfrom the breakdown of a compound called creatine.\nHigh level means that kidneys aren’t working well.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Creatinine:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 6) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Blood Urea Nitrogen (BUN)",
                                        nameOfScreen:
                                            "Blood Urea Nitrogen (BUN)",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "(BUN) test measures the amount of nitrogen in your\nblood that comes from the waste product urea.\nThis test shows how well your kidneys are working.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Blood Urea Nitrogen (BUN):",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 7) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Blood Ketones",
                                        nameOfScreen: "Blood Ketones",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Ketones are byproducts of fat metabolism. When\nIncreased, it is a serious complication of diabetes.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Blood Ketones:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 8) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Proteins in Urine",
                                        nameOfScreen: "Proteins in Urine",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Elevated levels of protein in urine might be\nindicator of kidney disease.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Proteins in Urine:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 9) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Weight",
                                        nameOfScreen: "Weight",
                                        rate: ["17", "20", "33", "40"],
                                        label: "Put your weight in kg.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Weight:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                                if (index == 10) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Visual Acuity",
                                        nameOfScreen: "Visual Acuity",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Visual acuity refers to your ability to discern the\nshapes and details of the things you see.\nIt’s just one factor in your overall vision.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Visual Acuity:",
                                        date: "04/03/2020",
                                        values: [
                                          FlSpot(1, 2.8),
                                          FlSpot(3, 1.9),
                                          FlSpot(6, 3),
                                          FlSpot(10, 1.3),
                                          FlSpot(13, 2.5),
                                        ],
                                        functionClear: () {},
                                        onChange: (v) {
                                          print(v);
                                        },
                                      ));
                                }
                              },
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: K.mainColor,
                              ),
                              leading: Text(
                                label[index],
                                style: Style.textStyleBmiText,
                              ),
                            ),
                            Divider(
                              indent: 20,
                              endIndent: 20,
                            )
                          ],
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
