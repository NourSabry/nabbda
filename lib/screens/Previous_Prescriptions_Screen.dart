import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field_medical_records.dart';
import 'package:nabbda/constants.dart';

class PreviousPrescriptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: Stack(children: [
          AppbarWithLabelAndIcon(
            function: () {
              Get.back();
            },
            label: "Previous Prescriptions ",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130, right: 10, left: 10),
            child: Material(
              color: K.WhiteColor,
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Image.asset("assets/images/Report.jpg",
                        width: 100, height: 100),
                    SizedBox(height: 10),
                    Text("Upload file scan ",
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 13,
                        )),
                    Text("Max Size: 10 MB",
                        style:
                        TextStyle(color: Color(0xFF707070), fontSize: 13)),
                    SizedBox(height: 20),
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NewTextField(
                            hint: "Write your report name",
                            label: "File Name",
                          ),
                          SizedBox(height: 10),
                          NewTextField(
                            hint: "Write any notes about it",
                            label: "Notes",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    RegisterButton(
                      function: () {},
                      label: "Save",
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
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
