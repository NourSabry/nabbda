import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabbda/ASCVDRisk.dart';
import 'package:nabbda/AtherosclerosisRisk.dart';
import 'package:nabbda/HeartRisk.dart';
import 'package:nabbda/StrokeRisk.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/bmi_screen.dart';
import 'package:nabbda/di_ris_screen.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomizedColors.backk,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.07, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Calculator",
                    style: TextStyle(
                        color: CustomizedColors.bck,
                        fontWeight: FontWeight.w600,
                        fontSize: 22)),
                SizedBox(height: size.height * 0.04),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BMIScreen();
                          }));
                        },
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc1.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 15),
                              Text("Body Mass\nIndex (BMI)",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DiRisScreen();
                          }));
                        },
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc2.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 25),
                              Text("Diabetes Risk",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            SvgPicture.asset(
                              "assets/images/calc3.svg",
                              height: size.height * 0.045,
                            ),
                            SizedBox(height: 15),
                            Text("Calories\nCalculator (BMR)",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: CustomizedColors.bck,
                                    height: 1.3)),
                          ],
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HeartRisk()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc3.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 15),
                              Text("Heart Risk",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AtherosclerosisRisk()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc3.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 15),
                              Text("Atherosclerosis\Risk ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StrokeRisk()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc3.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 15),
                              Text("Stroke Risk",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ASCVDRisk()),
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              SvgPicture.asset(
                                "assets/images/calc3.svg",
                                height: size.height * 0.045,
                              ),
                              SizedBox(height: 15),
                              Text("ASCVD Risk ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: CustomizedColors.bck,
                                      height: 1.3)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 180),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
