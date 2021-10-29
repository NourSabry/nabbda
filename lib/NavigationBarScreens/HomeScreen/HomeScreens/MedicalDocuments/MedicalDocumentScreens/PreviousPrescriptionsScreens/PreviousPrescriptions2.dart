import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/PreviousPrescriptionsScreens/PreviousPrescriptions3.dart';

class PreviousPrescriptions2 extends StatefulWidget {
  @override
  _PreviousPrescriptions2 createState() => _PreviousPrescriptions2();
}

class _PreviousPrescriptions2 extends State<PreviousPrescriptions2> {
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
                Text("Previous Prescriptions ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 110,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
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
                              style: TextStyle(
                                  color: Color(0xFF707070), fontSize: 13)),
                          SizedBox(height: 20),
                          Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 15, bottom: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 0, top: 10),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFCCCCCC)),
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
                                          hintStyle: TextStyle(
                                              color: Color(0xFFBDBDBD)),
                                        ),
                                        initialValue: "Complete Blood Picture",
                                        style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                        )),
                                    SizedBox(height: 10),
                                    TextFormField(
                                        textAlign: TextAlign.left,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 0, top: 10),
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
                                          hintStyle: TextStyle(
                                              color: Color(0xFFBDBDBD)),
                                        ),
                                        initialValue: "Last one",
                                        style: TextStyle(
                                            color: Color(0xFF3B3C55))),
                                    SizedBox(height: 15),
                                  ])),
                        ],
                      )),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PreviousPrescriptions3Screen()));
                    },
                    child: Text("Share",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6E78F7),
                      minimumSize: Size(155, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
