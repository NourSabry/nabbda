import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/Share/reportAlert.dart';
import 'package:nabbda/Share/ShareReport.dart';

class Share extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: myAppBar(
        myIcon: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {}),
        Title: "Share",
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
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OurTextField(
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => YourReport()));
                        },
                        hint: "Upload your Report",
                        prefix: Icon(nabbdaIcons.upload,
                            color: Color(0xFFBDBDBD), size: 18)),
                    SizedBox(height: 50),
                    Text("Or ",
                        style: TextStyle(
                            color: Color(0xFF3B3C55),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(height: 30),
                    OurTextField(
                      function: () => showDialog<String>(
                          barrierColor: Color(0xFF707070),
                          context: context,
                          builder: (BuildContext context) => ReportAlert()),
                      hint: "Search in your reports",
                      prefix: Icon(Icons.search,
                          color: Color(0xFFBDBDBD), size: 30),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
