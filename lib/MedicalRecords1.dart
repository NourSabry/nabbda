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
      appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("Medical Records",
              style: TextStyle(color: Color(0xFF3B3C55)))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  General Data",
                    style: TextStyle(
                        color: Color(0xFF0880AE),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                    textAlign: TextAlign.left,
                  )),
              SizedBox(height: 15),
              Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
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
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 0, top: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 0, top: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                            ),
                            contentPadding: EdgeInsets.only(bottom: 0, top: 20),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: "Smoking",
                            labelStyle: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                            suffixIcon:
                                Icon(Icons.check_box, color: Colors.blue[700])),
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
                          color: Color(0xFF0880AE),
                          fontWeight: FontWeight.w500,
                          fontSize: 20))),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                    onSaved: (value) {
                      disease1 = value;
                    },
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      suffixIcon:
                          Icon(Icons.cancel_outlined, color: Color(0xFF0880AE)),
                      border: InputBorder.none,
                    ),
                    initialValue: "Skin allergy",
                    style: TextStyle(
                        color: Color(0xFF3B3C55), fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 15),
              Container(
                  height: 45,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      onSaved: (value) {
                        disease1 = value;
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 5, top: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Add your disease ",
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD))))),
              SizedBox(height: 20),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("  Familial disease ",
                      style: TextStyle(
                          color: Color(0xFF0880AE),
                          fontWeight: FontWeight.w500,
                          fontSize: 20))),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                    onSaved: (value) {
                      disease1 = value;
                    },
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.cancel_outlined, color: Color(0xFF0880AE)),
                    ),
                    initialValue: "Skin allergy",
                    style: TextStyle(
                        color: Color(0xFF3B3C55), fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 15),
              Container(
                  height: 45,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      onSaved: (value) {
                        disease1 = value;
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 5, top: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Add your disease ",
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD))))),
              SizedBox(height: 20),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("  Chronic Illnesses ",
                      style: TextStyle(
                          color: Color(0xFF0880AE),
                          fontWeight: FontWeight.w500,
                          fontSize: 20))),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                    onSaved: (value) {
                      disease1 = value;
                    },
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon:
                          Icon(Icons.cancel_outlined, color: Color(0xFF0880AE)),
                    ),
                    initialValue: "Skin allergy",
                    style: TextStyle(
                        color: Color(0xFF3B3C55), fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 15),
              Container(
                  height: 45,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      onSaved: (value) {
                        disease1 = value;
                      },
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 5, top: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Add your disease ",
                          hintStyle: TextStyle(color: Color(0xFFBDBDBD))))),
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
                      primary: Color(0xFF0880AE),
                      minimumSize: Size(155, 48))),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
