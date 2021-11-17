import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_montring_screen.dart';

class HeartDiseaseScreen extends StatelessWidget {
  final List<String> label = ["Heart Ejection Fraction", "N-terminal Pro -BNP"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Get.back();
              },
              label: "Heart Disease",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Container(
                height: size.height - 200,
                width: size.width,
                decoration: BoxDecoration(
                    color: K.WhiteColor,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                    itemCount: label.length,
                    itemBuilder: (ctx, index) => Column(
                          children: [
                            ListTile(
                              onTap: () {
                                if (index == 0) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "Heart Ejection Fraction",
                                        nameOfScreen: "Heart Ejection Fraction",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Ejection fraction (EF) is a percentage, of how\nmuch blood the left ventricle pumps out with\neach contraction.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Heart Ejection Fraction:",
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
                                } else if (index == 1) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint: "N-terminal Pro -BNP",
                                        nameOfScreen: "N-terminal Pro -BNP",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "N-terminal pro-brain natriuretic peptide reflects\nboth left ventricular diastolic dysfunction and\nmyeloma-related renal insufficiency and robustly\npredicts mortality in patients with symptomatic\nmultiple myeloma.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "N-terminal Pro -BNP:",
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
                              indent: 20,
                              endIndent: 20,
                              color: K.grayColor,
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
