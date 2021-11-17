import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_montring_screen.dart';

class GeneralHealthMonitoringScreen extends StatelessWidget {
  final List<String> label = [
    'Cholestrol',
    "Triglyceride",
    "HDL",
    "LDL",
    "Hemoglobin ",
    "RBC",
    "WBC",
    "Platelets",
    "Calcium",
    "Vitamin -D",
    "Vitamin B12",
    "CO2"
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
              label: "Health Monitoring ",
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
                                        hint: "Cholesterol rate ",
                                        nameOfScreen: "Cholesterol",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Cholesterol is a waxy, fat-like substance that’s\nfound in all the cells in your body.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Cholestrol:",
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
                                  print(0);
                                } else if (index == 1) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Triglyceride",
                                        nameOfScreen: "Triglyceride",
                                        label:
                                            "Triglyceride are a type of fat in the blood. High\ntriglyceride levels are associated with overweight,\nsmoking and diabetes.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Triglyceride:",
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
                                  print(1);
                                } else if (index == 2) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "HDL",
                                        nameOfScreen: "HDL",
                                        label:
                                            "HDL is called the “good” cholesterol because it\nhelps blood flow. It should be high.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "HDL:",
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

                                  print(2);
                                } else if (index == 3) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "LDL",
                                        nameOfScreen: "LDL",
                                        label:
                                            "LDL is called the “bad” cholesterol. It can deposits\nin your arteries causing atherosclerosis.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "LDL :",
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

                                  print(3);
                                } else if (index == 4) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Hemoglobin ",
                                        nameOfScreen: "Hemoglobin ",
                                        label:
                                            "If your hemoglobin level is lower than normal,\nYou have anemia.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Hemoglobin:",
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

                                  print(4);
                                } else if (index == 5) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "RBC",
                                        nameOfScreen: "RBC",
                                        label:
                                            "RBC is red blood cell count, if high causes increase\nblood viscosity and low in anemia.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "RBC:",
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
                                } else if (index == 6) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "WBC",
                                        nameOfScreen: "WBC",
                                        label:
                                            "WBC is stands for white blood cell. They are part\nof the body’s immune system.They help the\nbody fight infection and other diseases.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "WBC:",
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
                                } else if (index == 7) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Platelets",
                                        nameOfScreen: "Platelets",
                                        label:
                                            "Platelets are small, colorless cell fragments in our\nblood that form clots and stop or prevent bleeding.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Platelets:",
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
                                } else if (index == 8) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Calcium",
                                        nameOfScreen: "Calcium",
                                        label:
                                            "Calcium is an important  mineral. If it is low will\ncauses bone problems. If high will causes stones.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Calcium:",
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
                                } else if (index == 9) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Vitamin-D",
                                        nameOfScreen: "Vitamin-D",
                                        label:
                                            "Vitamin-D is an essential nutrient that maintains\nthe body levels calcium.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Vitamin-D:",
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
                                } else if (index == 10) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Vitamin B12",
                                        nameOfScreen: "Vitamin B12",
                                        label:
                                            "Vitamin B12 is important for nerve cells functions.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Vitamin B12:",
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
                                } else if (index == 11) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "CO2",
                                        nameOfScreen: "CO2",
                                        label:
                                            "CO2 is important for lungs and kidney functions.",
                                        rate: ["17", "20", "33", "40"],
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "CO2:",
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
                              leading: Text(label[index],style: TextStyle(
                                color : Color(0xFF707070), fontSize: 16 , fontWeight : FontWeight.w600
                              ),),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: K.mainColor,
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
