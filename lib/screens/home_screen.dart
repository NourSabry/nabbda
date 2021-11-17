import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/card_profile.dart';
import 'package:nabbda/components/card_reminder.dart';
import 'package:nabbda/components/cards_home_screen.dart';
import 'package:nabbda/components/container_home_screen.dart';
import 'package:nabbda/screens/healthmontring_screen.dart';
import 'package:nabbda/screens/medical_documents_screen.dart';
import 'package:nabbda/screens/medical_records_screen.dart';
import 'package:nabbda/screens/vital_signs_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> labels = [
    "Medical Records",
    "Vital Signs",
    "Health Monitoring",
    "Medical Documents"
  ];
  final List<String> images = [
    "assets/images/medical.svg",
    "assets/images/vital.svg",
    "assets/images/health.svg",
    "assets/images/medical2.svg"
  ];
  final List<String> imagesWave = [
    "assets/images/high.svg",
    "assets/images/low.svg",
    "assets/images/low.svg",
    "assets/images/high.svg"
  ];
  final List<String> percent = [
    "15%Higher",
    "5%Low",
    "5%Low",
    "15%Higher",
  ];
  final List<String> nameOfMedicine = [
    "Panadol,ciproxin /1 pills",
    "Panadol,ciproxin /1 pills",
    "Panadol,ciproxin /1 pills",
  ];
  final List<String> timeOfMedicine = [
    "5 Minutes",
    "5 Minutes",
    "5 Minutes",
  ];
  final List<Color> colorOfCard = [
    Color(0xFF3C89E6),
    Color(0xFFEC4B3E),
    Color(0xFF3C89E6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerOfHomeScreen(
              functionShare: () {},
              onChange: (v) {
                print(v);
              },
            ),
            Container(
              height: 430,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: labels.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (BuildContext context, index) => Cards(
                        label: labels[index],
                        images: images[index],
                        imageWave: imagesWave[index],
                        percent: percent[index],
                        function: () {
                          if (index == 0) {
                            Get.to(() => MedicalRecordsScreen());
                            print("index 0");
                          } else if (index == 1) {
                            print("index 1");
                            Get.to(() => VitalSignsScreen());
                          } else if (index == 2) {
                            Get.to(() => HealthMonitoringScreen());
                            print("index 2");
                          } else if (index == 3) {
                            Get.to(() => MedicalDocumentScreen());
                            print("index 3");
                          }
                        },
                      )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text("Remember Your Medications",
                  style: Style.textStyleHomeScreenText),
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: nameOfMedicine.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CardOfReminder(
                          label: nameOfMedicine[index],
                          time: timeOfMedicine[index],
                          color: colorOfCard[index],
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctors Nearby You",
                      style: Style.textStyleHomeScreenText),
                  Text("See all",
                      style: TextStyle(
                          fontSize: 18,
                          color: CustomizedColors.btnInAct,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) => CardOfProfile(
                        label: "Dr:Mohamed Said",
                        descriptions: "Dr:Mohamed Said",
                        image: "assets/images/Male.png",
                        rate: "3.5",
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
