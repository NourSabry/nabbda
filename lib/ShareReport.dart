import 'package:flutter/material.dart';

class YourReport extends StatefulWidget {
  @override
  _YourReport createState() => _YourReport();
}

class _YourReport extends State<YourReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E78F7),
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Share",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: Color(0xFFF5F5F5),
        child: Stack(
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
              left: 15,
              right: 15,
              top: 20,
              bottom: 20,
              child: Positioned(
                left: 15,
                right: 15,
                top: 20,
                bottom: 20,
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF6E78F7),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
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
                                          color: Color(0xFF707070),
                                          fontSize: 13)),
                                  SizedBox(height: 20),
                                  Container(
                                      padding: EdgeInsets.only(
                                          left: 20,
                                          right: 20,
                                          top: 15,
                                          bottom: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            TextFormField(
                                              textAlign: TextAlign.left,
                                              decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    bottom: 0, top: 10),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Color(0xFFCCCCCC)),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFFCCCCCC))),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                                labelText: "File Name",
                                                labelStyle: TextStyle(
                                                    color: Color(0xFF9E9E9E),
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                hintText:
                                                    "Write your report name",
                                                hintStyle: TextStyle(
                                                    color: Color(0xFFBDBDBD)),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            TextFormField(
                                                textAlign: TextAlign.left,
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                          bottom: 0, top: 10),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFCCCCCC)),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFFCCCCCC))),
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .always,
                                                  labelText: "Notes",
                                                  labelStyle: TextStyle(
                                                      color: Color(0xFF9E9E9E),
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  hintText:
                                                      "Write any notes about it",
                                                  hintStyle: TextStyle(
                                                      color: Color(0xFFBDBDBD)),
                                                )),
                                            SizedBox(height: 15),
                                          ])),
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
                              primary: Color(0xFF6E78F7),
                              minimumSize: Size(155, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 300),
                        ],
                      ),
                    ),
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
