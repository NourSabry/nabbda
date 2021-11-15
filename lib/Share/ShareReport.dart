import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurCustomerDivider.dart';
import 'package:nabbda/components/NewTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class YourReport extends StatefulWidget {
  @override
  _YourReport createState() => _YourReport();
}

class _YourReport extends State<YourReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        myIcon: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        Title: "Share",
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
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
                        style:
                            TextStyle(color: Color(0xFF707070), fontSize: 13)),
                    SizedBox(height: 20),
                    NewTextField(
                        hint: "Write your report name", label: "File Name"),
                    CustomDivider(),
                    NewTextField(
                        hint: "Write any notes about it", label: "Notes"),
                    SizedBox(height: 30),
                    NabbdaButton(Name: "Share")
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
