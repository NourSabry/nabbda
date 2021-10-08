import 'package:flutter/material.dart';
import 'package:nabbda/Repeat.dart';
import 'package:nabbda/Duration.dart';
import 'package:nabbda/setTime.dart';
import 'package:nabbda/colors.dart';

class MedicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.07, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Medications",
                    style: TextStyle(
                        color: CustomizedColors.bck,
                        fontWeight: FontWeight.w600,
                        fontSize: 22)),
                SizedBox(height: size.height * 0.04),
                Container(
                  height: 110,
                  padding: EdgeInsets.only(top: 15, left: 20, right: 15),
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Medicine",
                                style: TextStyle(
                                    color: CustomizedColors.txtFBo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            TextField(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: CustomizedColors.bck),
                              decoration: InputDecoration(
                                  hintText: "Write the medicine name",
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: CustomizedColors.txtFT),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Icon(Icons.add_circle,
                            size: size.height * 0.04,
                            color: CustomizedColors.btnInAct),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.only(top: 15, left: 20, right: 15),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Amount",
                                style: TextStyle(
                                    color: CustomizedColors.txtFBo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            TextField(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: CustomizedColors.bck),
                              decoration: InputDecoration(
                                  hintText: "—————— pills",
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: CustomizedColors.txtFT),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Expanded(
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.only(top: 15, left: 20, right: 15),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Weight",
                                style: TextStyle(
                                    color: CustomizedColors.txtFBo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            TextField(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: CustomizedColors.bck),
                              decoration: InputDecoration(
                                  hintText: "————— g",
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: CustomizedColors.txtFT),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.06),
                Text("Reminder Settings",
                    style: TextStyle(
                        color: CustomizedColors.btnInAct,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                SizedBox(height: size.height * 0.03),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => Repeat(),
                              ),
                          child: Container(
                              height: 110,
                              padding:
                                  EdgeInsets.only(top: 15, left: 20, right: 15),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Repeat",
                                      style: TextStyle(
                                          color: CustomizedColors.txtFBo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14)),
                                  TextField(
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: CustomizedColors.bck),
                                    decoration: InputDecoration(
                                        hintText: "Select days",
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: CustomizedColors.txtFT),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none),
                                  ),
                                ],
                              ))),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => Duration(),
                        ),
                        child: Container(
                          height: 110,
                          padding:
                              EdgeInsets.only(top: 15, left: 20, right: 15),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Duration",
                                  style: TextStyle(
                                      color: CustomizedColors.txtFBo,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                              TextField(
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: CustomizedColors.bck),
                                decoration: InputDecoration(
                                    hintText: "Select weeks",
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: CustomizedColors.txtFT),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none),
                              ),
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
                        onTap: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => SetTime(),
                        ),
                        child: Container(
                          height: 110,
                          padding:
                              EdgeInsets.only(top: 15, left: 20, right: 15),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Start Time",
                                  style: TextStyle(
                                      color: CustomizedColors.txtFBo,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14)),
                              TextField(
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: CustomizedColors.bck),
                                decoration: InputDecoration(
                                    hintText: "Select time",
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: CustomizedColors.txtFT),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width * 0.06),
                    Expanded(
                      child: Container(
                        height: 110,
                        padding: EdgeInsets.only(top: 15, left: 20, right: 15),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("End Time",
                                style: TextStyle(
                                    color: CustomizedColors.txtFBo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                            TextField(
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: CustomizedColors.bck),
                              decoration: InputDecoration(
                                  hintText: "Select time",
                                  hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: CustomizedColors.txtFT),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                    ),
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
