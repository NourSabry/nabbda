import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/MedicalAnalysisScreens/MedicalAnalysis2.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/NewTextField.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/BackgroundContainer.dart';

class MedicalAnalysis1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
          Title: "Medical Analysis",
          myIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
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
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                        style:
                            TextStyle(color: Color(0xFF707070), fontSize: 13)),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          NewTextField(
                            hint: "Write your report name",
                            label: "File Name",
                          ),
                          SizedBox(height: 10),
                          NewTextField(
                            hint: "Write any notes about it",
                            label: "Notes",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    NabbdaButton(
                        Name: "Save",
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MedicalAnalysis2()));
                        }),
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
