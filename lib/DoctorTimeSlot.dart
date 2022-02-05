import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:nabbda/icons/MyIcon.dart';

class DoctorTime extends StatefulWidget {
  @override
  _DoctorTime createState() => _DoctorTime();
}

class _DoctorTime extends State<DoctorTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E78F7),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Giza",
                      style: TextStyle(color: Colors.white, fontSize: 9)),
                ),
                // Icon(
                //   NabdaIcons.navigate,
                //   color: Colors.white,
                // ),
              ],
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text("Select a time slot",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 450,
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: SvgPicture.asset(
                                  "assets/images/DrMohamed.svg"),
                            ),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Text(
                                  "DR. Mohamed Saeed Al Gama",
                                  style: TextStyle(
                                      color: Color(0xFF313450),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                    "Ph.D. Cardiovascular Diseases - Professor and Consultant Cardiology and Cardiac Categorization Al-Azra University",
                                    style: TextStyle(
                                      color: Color(0xFF898A8F),
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                            Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 1,
                              indent: 15,
                              endIndent: 15,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text("DATE & TIME",
                                        style: TextStyle(
                                            color: Color(0xFF898A8F),
                                            fontSize: 12)),
                                    Text(
                                      "Tomorrow, 6 Oct",
                                      style: TextStyle(
                                        color: Color(0xFF313450),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      "06.00PM",
                                      style: TextStyle(
                                        color: Color(0xFF313450),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 1,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                                Column(
                                  children: [
                                    Text("Reservation Fees",
                                        style: TextStyle(
                                          color: Color(0xFF898A8F),
                                          fontSize: 12,
                                        )),
                                    Text(
                                      "250 L.E",
                                      style: TextStyle(
                                          color: Color(0xFF313450),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                  height: 1,
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
