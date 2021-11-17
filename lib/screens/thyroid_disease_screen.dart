import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_montring_screen.dart';

class ThyroidDiseaseScreen extends StatelessWidget {
  final List<String> label = ["TSH", "T3", "T4", "PTH"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "Thyroid Disease",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Container(
              width: size.width,
              height: size.height - 200,
              decoration: BoxDecoration(
                  color: K.WhiteColor, borderRadius: BorderRadius.circular(15)),
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
                                      hint: "TSH",
                                      nameOfScreen: "Thyroid Disease",
                                      rate: ["17", "20", "33", "40"],
                                      label:
                                          "TSH stands for thyroid stimulating hormone. High\nLevel is associated with hypothyroidism. Low level\nis associated with hyperthyroidism.",
                                      status: [
                                        "Normal",
                                        "abNormal",
                                        "Normal",
                                      ],
                                      typeRate: "TSH:",
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
                                      hint: "T3",
                                      nameOfScreen: "T3",
                                      rate: ["17", "20", "33", "40"],
                                      label:
                                          "High Level is associated with hyperthyroidism.\nLow level is associated with hypothyroidism.",
                                      status: [
                                        "Normal",
                                        "abNormal",
                                        "Normal",
                                      ],
                                      typeRate: "T3:",
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
                                      hint: "T4",
                                      nameOfScreen: "T4",
                                      rate: ["17", "20", "33", "40"],
                                      label:
                                          "High Level is associated with hyperthyroidism.\nLow level is associated with hypothyroidism.",
                                      status: [
                                        "Normal",
                                        "abNormal",
                                        "Normal",
                                      ],
                                      typeRate: "T4:",
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
                                      hint: "PTH",
                                      nameOfScreen: "PTH",
                                      rate: ["17", "20", "33", "40"],
                                      label:
                                          "Parathyroid hormone (PTH) is controlling calcium\nlevels in your blood.",
                                      status: [
                                        "Normal",
                                        "abNormal",
                                        "Normal",
                                      ],
                                      typeRate: "PTH:",
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
                            leading: Text(
                              label[index],
                              style: Style.textStyleBmiText,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: K.mainColor,
                            ),
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 20,
                          )
                        ],
                      )),
            ),
          )
        ],
      ),
    );
  }
}
