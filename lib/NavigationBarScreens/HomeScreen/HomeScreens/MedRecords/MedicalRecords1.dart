import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/NewTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

// ignore: must_be_immutable
class MedicalRecords1 extends StatelessWidget {
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
      appBar: myAppBar(
        Title: "Medical Records",
        myIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              left: 0, right: 0, top: 0, bottom: 550, child: PurpleContainer()),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
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
                              suffix: Icon(Icons.check_box,
                                  color: Color(0xFF6E78F7)),
                            )
                          ])),
                      SizedBox(height: 20),
                      Text("Allergy Alerts",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: NewTextField(hint: "Add your disease "),
                      ),
                      Text("Familial disease ",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: NewTextField(hint: "Add your disease "),
                      ),
                      Text("Chronic Illnesses",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontWeight: FontWeight.w600,
                              fontSize: 16)),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 30),
                        child: NewTextField(hint: "Add your disease "),
                      ),
                      Center(
                        child: NabbdaButton(Name: "Save", function: () {}),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
