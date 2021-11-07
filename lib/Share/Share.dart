import 'package:flutter/material.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/Share/reportAlert.dart';
import 'package:nabbda/Share/ShareReport.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
          backgroundColor: Color(0xFF6E78F7),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {}),
          title: Text("Share",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold))),
      body: Container(
        color: Color(0xFFF6F6F6),
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
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6E78F7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 60),
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 2),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(children: [
                                Icon(NabdaIcons.upload,
                                    color: Color(0xFFBDBDBD), size: 18),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => YourReport()),
                                    );
                                  },
                                  child: Text("Upload your Report",
                                      style: TextStyle(
                                          color: Color(0xFFBDBDBD),
                                          fontWeight: FontWeight.w500)),
                                )
                              ])),
                          SizedBox(height: 50),
                          Container(
                              alignment: Alignment.center,
                              child: Text("Or ",
                                  style: TextStyle(
                                      color: Color(0xFF3B3C55),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          SizedBox(height: 30),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 40),
                            decoration: BoxDecoration(
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Icon(Icons.search,
                                    color: Color(0xFFBDBDBD), size: 30),
                                TextButton(
                                    onPressed: () => showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              ReportAlert(),
                                        ),
                                    child: Text("Search in your reports",
                                        style: TextStyle(
                                            color: Color(0xFFBDBDBD),
                                            fontWeight: FontWeight.w500))),
                              ],
                            ),
                          ),
                          SizedBox(height: 300)
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
