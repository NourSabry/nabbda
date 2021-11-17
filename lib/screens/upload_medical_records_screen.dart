import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/screens/medical_analysis_save_records_screen.dart';

class UploadMedicalAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack(children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "Medical Analysis",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text("Upload your file",
                      style: TextStyle(
                          color: Color(0xFF707070),
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                  SizedBox(height: 40),
                  SvgPicture.asset("assets/images/Data.svg"),
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6E78F7),
        onPressed: () {
          Get.to(()=>MedicalAnalysisScreen());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
