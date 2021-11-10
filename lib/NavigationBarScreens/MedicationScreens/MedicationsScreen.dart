import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/MedicationScreens/Repeat.dart';
import 'package:nabbda/NavigationBarScreens/MedicationScreens/Duration.dart';
import 'package:nabbda/NavigationBarScreens/MedicationScreens/setTime.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/MedicationContainer.dart';
import 'package:nabbda/components/MedicationContainers.dart';
import 'package:nabbda/components/PurpleContainer.dart';

class MedicationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E78F7),
        elevation: 0,
        title: Text(
          "Medications ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 22),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
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
              widget: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MedicationContainer1(),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        children: [
                          Expanded(
                              child: MedicationContainers(
                            hint: "———— pills",
                            text: "Amount",
                          )),
                          SizedBox(width: size.width * 0.06),
                          Expanded(
                              child: MedicationContainers(
                            hint: "——— g",
                            text: "Weight ",
                          )),
                        ],
                      ),
                      SizedBox(height: size.height * 0.06),
                      Text("Reminder Settings",
                          style: TextStyle(
                              color: Colors.black,
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
                              child: MedicationContainers(
                                  text: "Repeat", hint: "Select days"),
                            ),
                          ),
                          SizedBox(width: size.width * 0.06),
                          Expanded(
                            child: GestureDetector(
                                onTap: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          Duration(),
                                    ),
                                child: MedicationContainers(
                                    text: "Duration", hint: "Select weeks")),
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
                                      builder: (BuildContext context) =>
                                          SetTime(),
                                    ),
                                child: MedicationContainers(
                                    text: "Start Time", hint: "Select time")),
                          ),
                          SizedBox(width: size.width * 0.06),
                          Expanded(
                              child: MedicationContainers(
                                  text: "End Time", hint: "Select time")),
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
    );
  }
}
