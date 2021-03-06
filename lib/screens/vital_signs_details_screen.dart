import 'package:flutter/material.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/container_vital_signs.dart';

class VitalSignsDetailsScreen extends StatelessWidget {
  final List<String> names = [
    "Glucose",
    "Pules",
    "Pressure",
    "Temperature",
    "Respiratory Rate",
    "O2Saturation level"
  ];
  final List<String> time = [
    "24 Apr 2021",
    "24 Apr 2021",
    "24 Apr 2021",
    "24 Apr 2021",
    "24 Apr 2021",
    "24 Apr 2021",
  ];
  final List<String> quantity = [
    "200 mg/dl",
    "200 mg/dl",
    "200 mg/dl",
    "200 mg/dl",
    "200 mg/dl",
    "200 mg/dl",
  ];
  final List<String> images = [
    "assets/images/Shape.svg",
    "assets/images/favourites.svg",
    "assets/images/graphic.svg",
    "assets/images/thermometer.svg",
    "assets/images/lungs.svg",
    "assets/images/Union.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Vital Signs",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Text(
                        "Your Vital Signs",
                        style:
                            TextStyle(color: Color(0xFF6E78F7), fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "In Last 7 days",
                        style:
                            TextStyle(color: Color(0xFF7C9CBF), fontSize: 14),
                      ),
                    ),
                    ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: names.length,
                        itemBuilder: (context, index) => ContainerOfVitalSigns(
                              images: images[index],
                              name: names[index],
                              time: time[index],
                              data: [
                                0.0,
                                1.0,
                                1.5,
                                2.0,
                                0.0,
                                0.0,
                                -0.5,
                                -1.0,
                                -0.5,
                                0.0,
                                0.0
                              ],
                              quantity: quantity[index],
                            ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
