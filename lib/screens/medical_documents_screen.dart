import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/card_screen_medical_documents.dart';
import 'package:nabbda/screens/UploadMedicalReports.dart';
import 'package:nabbda/screens/UploadPreviousPrescriptions.dart';
import 'package:nabbda/screens/UploadRadiologyReports.dart';
import 'package:nabbda/screens/upload_medical_records_screen.dart';

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
                         Get.to(() => UploadPreviousPrescriptions());
                      } else if (index == 3) {
                         Get.to(() => UploadRadiologyReports());
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