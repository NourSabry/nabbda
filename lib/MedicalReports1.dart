import 'package:flutter/material.dart';
import 'package:nabbda/MedicalReports2.dart';

class MedicalReports1 extends StatefulWidget {
  @override
  _MedicalReports1 createState() => _MedicalReports1();
}

class _MedicalReports1 extends State<MedicalReports1> {
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
          title: Text("Medical Reports",
              style: TextStyle(color: Color(0xFF3B3C55))),
        ),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.asset("assets/images/report.png",
                      width: 100, height: 100),
                  SizedBox(height: 10),
                  Text("Upload file scan ",
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 13,
                      )),
                  Text("Max Size: 10 MB",
                      style: TextStyle(color: Color(0xFF707070), fontSize: 13)),
                  SizedBox(height: 20),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedicalReports2()),
                        );
                      },
                      child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextFormField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 0, top: 10),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC))),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    labelText: "File Name",
                                    labelStyle: TextStyle(
                                        color: Color(0xFF9E9E9E),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    hintText: "Write your report name",
                                    hintStyle:
                                        TextStyle(color: Color(0xFFBDBDBD)),
                                  ),
                                ),
                                SizedBox(height: 10),
                                TextFormField(
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(bottom: 0, top: 10),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC)),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFFCCCCCC))),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      labelText: "Notes",
                                      labelStyle: TextStyle(
                                          color: Color(0xFF9E9E9E),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500),
                                      hintText: "Write any notes about it",
                                      hintStyle:
                                          TextStyle(color: Color(0xFFBDBDBD)),
                                    )),
                                SizedBox(height: 15),
                              ]))),
                ],
              )),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {},
              child: Text("Share",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0880AE),
                  minimumSize: Size(155, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )))
        ]));
  }
}
