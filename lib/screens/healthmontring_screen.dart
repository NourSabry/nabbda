import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/diabetes_monitoring_screen.dart';
import 'package:nabbda/screens/general_health_montring_screen.dart';
import 'package:nabbda/screens/heart_disease_screen.dart';
import 'package:nabbda/screens/renal_disease_screen.dart';
import 'package:nabbda/screens/thyroid_disease_screen.dart';

class HealthMonitoringScreen extends StatelessWidget {
  final List<String> label = [
    'General Health Monitoring',
    "Heart Disease ",
    "Diabetes Monitoring",
    "Renal Disease ",
    "Thyroid Disease"
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
              label: "Health Monitoring ",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Container(
                width: size.width,
                height: size.height - 200,
                decoration: BoxDecoration(
                    color: K.WhiteColor,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: label.length,
                    itemBuilder: (ctx, index) => Column(
                          children: [
                            ListTile(
                              onTap: () {
                                if (index == 0) {
                                  print(0);
                                  Get.to(() => GeneralHealthMonitoringScreen());
                                } else if (index == 1) {
                                  Get.to(() => HeartDiseaseScreen());

                                  print(1);
                                } else if (index == 2) {
                                  Get.to(() => DiabetesMonitoringScreen());

                                  print(2);
                                } else if (index == 3) {
                                  Get.to(() => RenalDiseaseScreen());

                                  print(3);
                                } else if (index == 4) {
                                  Get.to(() => ThyroidDiseaseScreen());

                                  print(4);
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
