import 'package:flutter/material.dart';
import 'package:nabbda/icons/Upload.dart';
import 'package:nabbda/reportAlert.dart';
import 'package:nabbda/ShareReport.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
              onPressed: () {}),
          title: Text("Share", style: TextStyle(color: Color(0XFF3B3C55)))),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Icon(Upload.upload, color: Color(0xFFBDBDBD), size: 30),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => YourReport()),
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
              SizedBox(height: 50),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: [
                    Icon(Icons.search, color: Color(0xFFBDBDBD), size: 30),
                    SizedBox(width: 20),
                    TextButton(
                        onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => ReportAlert(),
                            ),
                        child: Text("Search in your reports",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD),
                                fontWeight: FontWeight.w500)))
                  ])),
            ],
          )),
    );
  }
}
