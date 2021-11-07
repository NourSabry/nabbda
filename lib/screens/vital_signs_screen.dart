import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_screen.dart';

class VitalSignsScreen extends StatelessWidget {
  final List<String> labels = [
    "Heart Rate",
    "Respiratory Rate",
    "Body Temperature ",
    "Blood Pressure ",
    "Random Blood Glucose  ",
    "O2 Saturation Level",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {},
              label: "Vital Signs",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: labels.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        onTap: () {
                          if (index == 0) {
                            Get.to(() => ChartScreen(
                              functionClear: (){},
                                  hint: "Heart Rate / Per minute",
                                  typeRate: "Heart Rate : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "Heart Rate",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          } else if (index == 1) {
                            Get.to(() => ChartScreen(
                              functionClear: (){},

                              hint: "Breaths / Per minute",
                                  typeRate: "Respiratory Rate : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "Respiratory Rate",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          } else if (index == 2) {
                            Get.to(() => ChartScreen(
                              functionClear: (){},

                              hint: "Temperature °C",
                                  typeRate: "Body Temperature : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "Body Temperature ",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          } else if (index == 3) {

                            Get.to(() => ChartScreen(
                              functionClear: (){},

                              hint: "Systolic / diastolic",
                                  typeRate: "Blood Pressure : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "Blood Pressure ",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          } else if (index == 4) {
                            Get.to(() => ChartScreen(
                              functionClear: (){},

                              hint: "Blood glucose mg/ dl",
                                  typeRate: "Random Blood Glucose : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "Random Blood Glucose",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          } else if (index == 5) {

                            Get.to(() => ChartScreen(
                              functionClear: (){},

                              hint: "oxygen saturation  spo2",
                                  typeRate: "O2 Saturation Level : ",
                                  date: "04/03/2020",
                                  status: [
                                    "Normal",
                                    "abNormal",
                                    "Normal",
                                    "abNormal"
                                  ],
                                  rate: ["17", "20", "33", "40"],
                                  onChange: (v) {
                                    print(v);
                                  },
                                  nameOfScreen: "O2 Saturation Level : ",
                                  values: [
                                    FlSpot(1, 2.8),
                                    FlSpot(3, 1.9),
                                    FlSpot(6, 3),
                                    FlSpot(10, 1.3),
                                    FlSpot(13, 2.5),
                                  ],
                                ));
                          }
                        },
                        leading: Text(
                          labels[index],
                          style: TextStyle(color: K.blackColor, fontSize: 12),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: K.mainColor,
                        ),
                      ),
                      Divider(
                        color: K.grayColor,
                        indent: 20,
                        endIndent: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
