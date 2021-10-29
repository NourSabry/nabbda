import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedRecords/MedicalRecords1.dart';

class MedicalRecords extends StatefulWidget {
  @override
  _MedicalRecords createState() => _MedicalRecords();
}

class _MedicalRecords extends State<MedicalRecords> {
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF6E78F7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 25,
            bottom: 570,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Text("Medical Records",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 100,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "  General Data",
                            style: TextStyle(
                                color: Color(0xFF6E78F7),
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                            textAlign: TextAlign.left,
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MedicalRecords1(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, bottom: 10, top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              TextFormField(
                                onSaved: (value) {
                                  bloodType = value;
                                },
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, top: 10),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: "Blood Type",
                                    labelStyle: TextStyle(
                                        color: Color(0xFF707070),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    hintText: "A+, A-, B+, B- , AB, O+, O",
                                    hintStyle:
                                        TextStyle(color: Color(0xFFBDBDBD))),
                              ),
                              TextFormField(
                                  onSaved: (value) {
                                    height = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC)),
                                      ),
                                      contentPadding:
                                          EdgeInsets.only(bottom: 0, top: 20),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      labelText: "Height",
                                      labelStyle: TextStyle(
                                          color: Color(0xFF707070),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                      hintText: "Write your height in cm",
                                      hintStyle:
                                          TextStyle(color: Color(0xFFBDBDBD)))),
                              TextFormField(
                                onSaved: (value) {
                                  weight = value;
                                },
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, top: 20),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: "Weight",
                                    labelStyle: TextStyle(
                                        color: Color(0xFF707070),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    hintText: "Write your weight in kg",
                                    hintStyle:
                                        TextStyle(color: Color(0xFFBDBDBD))),
                              ),
                              TextFormField(
                                onSaved: (value) {
                                  cigarettes = value;
                                },
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, top: 20),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: "Smoking",
                                    labelStyle: TextStyle(
                                        color: Color(0xFF707070),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    hintText: "Number of cigarettes per day",
                                    hintStyle:
                                        TextStyle(color: Color(0xFFBDBDBD)),
                                    suffixIcon: Icon(
                                        Icons.check_box_outline_blank,
                                        color: Color(0xFF6E78F7))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("  Allergy Alerts",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                      Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                              onSaved: (value) {
                                disease1 = value;
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Add your disease ",
                                  hintStyle:
                                      TextStyle(color: Color(0xFFBDBDBD))))),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("  Familial disease",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                      Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          onSaved: (value) {
                            disease2 = value;
                          },
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "Add your disease ",
                              hintStyle: TextStyle(color: Color(0xFFBDBDBD))),
                        ),
                      ),
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
