import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field_medical_records.dart';
import 'package:nabbda/constants.dart';

// ignore: must_be_immutable
class MedicalRecordsScreen extends StatelessWidget {
  var bloodType;
  var height;
  var weight;
  var cigarettes;
  var disease1;
  var disease2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack( children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "Medical Records",
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 130),
            child: Material(
              color: K.WhiteColor,
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30  , vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  General Data",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          NewTextField(
                            hint: "A+, A-, B+, B- , AB, O+, O-",
                            label: "Blood Type",
                          ),
                          NewTextField(
                            hint: "Write your height in cm",
                            label: "Height",
                          ),
                          NewTextField(
                            hint: "Write your weight in kg",
                            label: "Weight",
                          ),
                          NewTextField(
                            hint: "Number of cigarettes per day",
                            label: "Smoking",
                            suffix: Icon(Icons.check_box, color: Color(0xFF6E78F7)),
                          )
                        ])),
                    SizedBox(height: 20),
                    Text("Allergy Alerts",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: NewTextField(hint: "Add your disease "),
                    ),
                    Text("Familial disease ",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: NewTextField(hint: "Add your disease "),
                    ),
                    Text("Chronic Illnesses",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: NewTextField(hint: "Add your disease "),
                    ),
                    Center(
                      child: RegisterButton(
                        function: () {},
                        label: "Save",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
