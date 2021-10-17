import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabbda/UploadMedicalAnalysis.dart';
import 'package:nabbda/UploadMedicalReports.dart';
import 'package:nabbda/UploadPrescriptions.dart';
import 'package:nabbda/UploadRadiology.dart';
import 'package:nabbda/colors.dart';

class MedicalDocumentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomizedColors.backk,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,
                size: size.width * 0.06, color: CustomizedColors.bck),
          ),
        ),
        title: Text("Medical Documents",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: CustomizedColors.bck)),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.07, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadMedicalAnalysis()));
                    },
                    child: Container(
                      height: 170,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          SvgPicture.asset(
                            "assets/images/med1.svg",
                            height: size.height * 0.045,
                          ),
                          SizedBox(height: 15),
                          Text("Medical\nAnalysis",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadMedicalReports()));
                    },
                    child: Container(
                      height: 170,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          SvgPicture.asset(
                            "assets/images/med2.svg",
                            height: size.height * 0.045,
                          ),
                          SizedBox(height: 15),
                          Text("Medical\nReports",
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadPrescriptions()));
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
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          SvgPicture.asset(
                            "assets/images/med3.svg",
                            height: size.height * 0.045,
                          ),
                          SizedBox(height: 15),
                          Text("Previous\nPrescriptions",
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UploadRadiology()));
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
                              "assets/images/med4.svg",
                              height: size.height * 0.045,
                            ),
                            SizedBox(height: 15),
                            Text("Radiology\nReports",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: CustomizedColors.bck,
                                    height: 1.3)),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
