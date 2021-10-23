import 'package:flutter/material.dart';

class MedicalRecords1 extends StatefulWidget {
  @override
  _MedicalRecords1 createState() => _MedicalRecords1();
}

class _MedicalRecords1 extends State<MedicalRecords1> {
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
                                ),
                                initialValue: "A+",
                                style: TextStyle(
                                    color: Color(0xFF3B3C55),
                                    fontWeight: FontWeight.w500)),
                            TextFormField(
                                onSaved: (value) {
                                  height = value;
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
                                  labelText: "Height",
                                  labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                initialValue: "160 cm",
                                style: TextStyle(
                                    color: Color(0xFF3B3C55),
                                    fontWeight: FontWeight.w500)),
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
                                ),
                                initialValue: "76 kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3C55))),
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
                                    suffixIcon: Icon(Icons.check_box,
                                        color: Color(0xFF6E78F7))),
                                initialValue: "7",
                                style: TextStyle(
                                    color: Color(0xFF3B3C55),
                                    fontWeight: FontWeight.w500)),
                          ])),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("  Allergy Alerts",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                            onSaved: (value) {
                              disease1 = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.cancel_outlined,
                                  color: Color(0xFF6E78F7)),
                              border: InputBorder.none,
                            ),
                            initialValue: "Skin allergy",
                            style: TextStyle(
                                color: Color(0xFF3B3C55),
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 15),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                              onSaved: (value) {
                                disease1 = value;
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(0),
                                  fillColor: Color(0xFFF6F6F6),
                                  filled: true,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Add your disease ",
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFBDBDBD))))),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("  Familial disease ",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                            onSaved: (value) {
                              disease1 = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.cancel_outlined,
                                  color: Color(0xFF6E78F7)),
                              border: InputBorder.none,
                            ),
                            initialValue: "Skin allergy",
                            style: TextStyle(
                                color: Color(0xFF3B3C55),
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 10),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                              onSaved: (value) {
                                disease1 = value;
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
                                      EdgeInsets.only(bottom: 5, top: 20),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Add your disease ",
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFBDBDBD))))),
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("  Chronic Illnesses ",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20))),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                            onSaved: (value) {
                              disease1 = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.cancel_outlined,
                                  color: Color(0xFF6E78F7)),
                              border: InputBorder.none,
                            ),
                            initialValue: "Skin allergy",
                            style: TextStyle(
                                color: Color(0xFF3B3C55),
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 10),
                      Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextFormField(
                              onSaved: (value) {
                                disease1 = value;
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
                                      EdgeInsets.only(bottom: 5, top: 20),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  hintText: "Add your disease ",
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFBDBDBD))))),
                      SizedBox(height: 40),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text("Save ",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: Color(0xFF6E78F7),
                              minimumSize: Size(155, 48))),
                      SizedBox(height: 40),
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
