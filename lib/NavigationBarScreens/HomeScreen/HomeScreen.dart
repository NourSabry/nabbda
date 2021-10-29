import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeAlert.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/HealthMonitoring/HealthMonitoring.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedRecords/MedicalRecords.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedRecords/MedicalRecords1.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreen.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/Vital/VitalSigns.dart';
import 'package:nabbda/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => HomeAlert(),
        ),
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: size.height * 0.30,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    color: CustomizedColors.btnInAct.withOpacity(0.40),
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NABBDA",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                        color: CustomizedColors.bck)),
                                SizedBox(height: 10),
                                Text(
                                    "Track Your Health Reports\nAnd Get Reminders For your\nMedications, Stay Healthy!",
                                    style: TextStyle(
                                        color: CustomizedColors.bck,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          SizedBox(width: size.width * 0.04),
                          Image.asset(
                            "assets/images/home.png",
                            height: size.height * 0.15,
                          ),
                          Icon(Icons.share,
                              size: 30, color: CustomizedColors.bck)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        cursorColor: CustomizedColors.btnInAct,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 40),
                            child: Icon(Icons.search,
                                color: CustomizedColors.txtFT),
                          ),
                          hintText: "Search in your reports",
                          hintStyle: TextStyle(
                              color: CustomizedColors.txtFT,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  color: CustomizedColors.txtFBo, width: 0.01)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  color: CustomizedColors.txtFBo, width: 0.01)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.09),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MedicalRecords1(),
                                  ),
                                );
                              },
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MedicalRecords(),
                                    ),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    SvgPicture.asset(
                                        "assets/images/medical.svg",
                                        height: size.height * 0.045),
                                    SizedBox(height: 15),
                                    Text("Medical\nRecords",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3)),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/high.svg",
                                            color: CustomizedColors.btnInAct),
                                        SizedBox(width: 10),
                                        Text("10% Higher",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    CustomizedColors.txtFBo)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VitalSigns(),
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  SvgPicture.asset(
                                    "assets/images/vital.svg",
                                    height: size.height * 0.045,
                                  ),
                                  SizedBox(height: 15),
                                  Text("Vital Signs",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: CustomizedColors.bck,
                                          height: 1.3)),
                                  SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("assets/images/low.svg",
                                          color: CustomizedColors.btnInAct),
                                      SizedBox(width: 10),
                                      Text("5% Less",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: CustomizedColors.txtFBo)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HealthMonitoring()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  SvgPicture.asset("assets/images/health.svg",
                                      height: size.height * 0.045),
                                  SizedBox(height: 15),
                                  Text("Health\nMonitoring",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: CustomizedColors.bck,
                                          height: 1.3)),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("assets/images/low.svg",
                                          color: CustomizedColors.btnInAct),
                                      SizedBox(width: 10),
                                      Text("4% Less",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: CustomizedColors.txtFBo)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          child: Container(
                            height: 170,
                            padding: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MedicalDocumentScreen()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  SvgPicture.asset("assets/images/medical2.svg",
                                      height: size.height * 0.045),
                                  SizedBox(height: 15),
                                  Text("Medical\nDocuments",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: CustomizedColors.bck,
                                          height: 1.3)),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("assets/images/high.svg",
                                          color: CustomizedColors.btnInAct),
                                      SizedBox(width: 10),
                                      Text("12% Higher",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: CustomizedColors.txtFBo)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.035),
              Divider(color: Color(0xFFE4E4E4), thickness: 1),
              SizedBox(height: size.height * 0.035),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Vital Signs",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: CustomizedColors.btnInAct,
                          )),
                      SizedBox(height: size.height * 0.025),
                      Text("in last 7 days",
                          style: TextStyle(
                              fontSize: 14,
                              color: CustomizedColors.txt2,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: size.height * 0.025),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Heart Rate",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("100 bpm",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Normal Blood Pressure",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("120/80 mmHg",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010),
                            Divider(color: Color(0xFFE4E4E4), thickness: 1),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Respiratory Rate",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("12 bpm",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Random Blood Glucose",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("200 mg/dl",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.010),
                            Divider(color: Color(0xFFE4E4E4), thickness: 1),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Body Temperature",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("37°C",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("O2 Saturation Level",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("95%",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: CustomizedColors.bck,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: size.height * 0.007),
                                      Text("13 Apr 2021",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: CustomizedColors.txtFBo,
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xFFF5F5F5),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Text("Remember Your Medications",
                        style: TextStyle(
                            fontSize: 18,
                            color: CustomizedColors.btnInAct,
                            fontWeight: FontWeight.w500)),
                    SizedBox(height: size.height * 0.025),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Container(
                            width: size.width * 0.6,
                            height: size.width * 0.18,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Panadol, Cipronxin",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Text("2 Pills",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.notifications,
                                        color: CustomizedColors.btnInAct)
                                  ],
                                ),
                                SizedBox(height: size.height * 0.005),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("On Tuesday a3 3:00 pm",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: CustomizedColors.bck,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Container(
                            width: size.width * 0.6,
                            height: size.width * 0.18,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Panadol, Cipronxin",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Text("2 Pills",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.notifications,
                                        color: CustomizedColors.btnInAct)
                                  ],
                                ),
                                SizedBox(height: size.height * 0.005),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("After 6 Minuts",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: CustomizedColors.bck,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.02),
                          Container(
                            width: size.width * 0.6,
                            height: size.width * 0.18,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Panadol, Cipronxin",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Text("2 Pills",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: CustomizedColors.bck,
                                            fontWeight: FontWeight.bold)),
                                    Icon(Icons.notifications,
                                        color: CustomizedColors.btnInAct)
                                  ],
                                ),
                                SizedBox(height: size.height * 0.005),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text("After 6 Minuts",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: CustomizedColors.bck,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
