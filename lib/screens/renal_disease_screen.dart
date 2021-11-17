import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/chart_montring_screen.dart';

class RenalDiseaseScreen extends StatelessWidget {
  final List<String> label = [
    "Blood Urea Nitrogen",
    "Glomerular Filtration Rate (GFR)",
    "Urine Albumin"
  ];

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
              label: "Visual Acuity",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
              child: Container(
                width: size.width,
                height: size.height - 200,
                decoration: BoxDecoration(
                  color: K.WhiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
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
                                if (index == 1) {
                                  Get.to(() => ChartMonitoringScreen(
                                        hint:
                                            "Glomerular Filtration Rate\n(GFR)",
                                        nameOfScreen:
                                            "Glomerular Filtration Rate",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Glomerular filtration rate (GFR) is a test used to\ncheck how well the kidneys are working.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Glomerular Filtration Rate:",
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
                                        hint: "Urine Albumin",
                                        nameOfScreen: "Urine Albumin",
                                        rate: ["17", "20", "33", "40"],
                                        label:
                                            "Albumin is a protein found in the blood. A healthy\nkidney doesn’t let albumin pass from the blood\ninto the urine.",
                                        status: [
                                          "Normal",
                                          "abNormal",
                                          "Normal",
                                        ],
                                        typeRate: "Urine Albumin:",
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
