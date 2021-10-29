import 'package:flutter/material.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/container_vital_signs.dart';

class VitalSignsScreen extends StatelessWidget {
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
    "assets/images/hearts.svg",
    "assets/images/graphic.svg",
    "assets/images/thermometer.svg",
    "assets/images/lungs.svg",
    "assets/images/Union.svg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Vital Signs",
                      style: TextStyle(
                          fontSize: 25,
                          color: CustomizedColors.txtF,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF6E78F7),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 1,
                  child: Container(
                    width: size.width - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Text(
                            "Your Vital Signs",
                            style: TextStyle(
                                color: Color(0xFF6E78F7), fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15),
                          child: Text(
                            "In Last 7 days",
                            style: TextStyle(
                                color: Color(0xFF6E78F7), fontSize: 20),
                          ),
                        ),
                        ListView.builder(
                            physics: ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: names.length,
                            itemBuilder: (context, index) =>
                                ContainerOfVitalSigns(
                                  images: images[index],
                                  name: names[index],
                                  time: time[index],
                                  quantity: quantity[index],
                                ))
                      ],
                    ),
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
