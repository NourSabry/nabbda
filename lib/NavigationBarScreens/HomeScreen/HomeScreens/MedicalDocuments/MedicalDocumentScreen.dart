import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/MedicalAnalysisScreens/UploadMedicalAnalysis.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/MedicalReportsScreens/UploadMedicalReports.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/PreviousPrescriptionsScreens/UploadPrescriptions.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/RadiologyReportsScreens/UploadRadiology.dart';
import 'package:nabbda/components/CardScreens.dart';
import 'package:nabbda/components/AppbarWithLabelAndIcon.dart';

class MedicalDocumentScreen extends StatelessWidget {
  final List<String> label = [
    "Medical\nAnalysis",
    "Medical\nReports ",
    "Previous\nPrescriptions",
    "Radiology\nReports ",
  ];
  final List<String> images = [
    "assets/images/med1.svg",
    "assets/images/med2.svg",
    "assets/images/med3.svg",
    "assets/images/med4.svg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Medical Documents ",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: label.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (ctx, index) => CardScreens(
                    label: label[index],
                    image: images[index],
                    function: () {
                      if (index == 0) {
                        Get.to(() => UploadMedicalAnalysis());
                      } else if (index == 1) {
                        Get.to(() => UploadMedicalReports());
                      } else if (index == 2) {
                        Get.to(() => UploadPrescriptions());
                      } else if (index == 3) {
                        Get.to(() => UploadRadiology());
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
