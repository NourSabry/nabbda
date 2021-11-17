import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/charts.dart';
import 'package:nabbda/constants.dart';

class AscvdCalculatorScreen extends StatelessWidget {
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
              label: "ASCVD Risk ",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your Lifetime ASCVD Risk: ",
                            style: Style.textStyleBmiScreen,
                          ),
                          Text(
                            "39%",
                            style: Style.textStyleAlertText,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Your Lifetime ASCVD Risk: ",
                            style: Style.textStyleBmiScreen,
                          ),
                          Text(
                            "0.4% ",
                            style: Style.textStyleAlertText,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Your Yearly Average ASCVD Risk:: ",
                        style: Style.textStyleBmiScreen,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 10),
                        child: SizedBox(
                          height: 200,
                          child: ChartsExample(
                            values: [
                              FlSpot(1, 2.8),
                              FlSpot(3, 1.9),
                              FlSpot(6, 3),
                              FlSpot(10, 1.3),
                              FlSpot(13, 2.5),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Your Monthly Average ASCVD Risk: ",
                        style: Style.textStyleBmiScreen,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 10),
                        child: SizedBox(
                          height: 200,
                          child: ChartsExample(
                            values: [
                              FlSpot(1, 2.8),
                              FlSpot(3, 1.9),
                              FlSpot(6, 3),
                              FlSpot(10, 1.3),
                              FlSpot(13, 2.5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
