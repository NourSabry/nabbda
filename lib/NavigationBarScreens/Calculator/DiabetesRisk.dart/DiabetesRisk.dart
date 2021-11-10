import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/DiabetesRisk.dart/DiabetesTest1.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/BackgroundContainer.dart';

class DiabetesRisk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        Title: "Diabetes Risk",
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 450,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Diabetes Risk Calculator?",
                            style: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 10),
                        Text(
                            "It is a calculator used to assess the risk of developing type 2 diabetes, and it depends on the sex, age and weight of the person, his use of high blood pressure medication or not, family history of diabetes, and smoking.",
                            style: TextStyle(
                                color: Color(0xFF707070), fontSize: 14)),
                        SizedBox(height: 10),
                        Text(
                            "To find out your risk of developing type 2 diabetes in the next five years, please answer the questions on the following test ",
                            style: TextStyle(
                                color: Color(0xFF3B3C55),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                  NabbdaButton(
                    Name: "Start Test",
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiabetesTest1()));
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
