import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/HealthMonitoring/RenalDisease/VisualAcuity.dart';
import 'package:nabbda/icons/MyIcon.dart';

class DiabetesMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
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
            left: 10,
            right: 10,
            top: 25,
            bottom: 570,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Text("Diabetes Monitoring ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 80,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {},
                              title: Text("Fasting Blood Glucose ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              indent: 15,
                              endIndent: 20,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Microalbuminuria",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("HbA 1c ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Insulin level ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("C-peptide ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Creatinine",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Blood Urea Nitrogen (BUN)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Blood Ketones",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Proteins in Urine",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {},
                              title: Text("Weight",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                            Divider(
                              color: Color(0xFFE4E4E4),
                              thickness: 1,
                              height: 1,
                              endIndent: 20,
                              indent: 15,
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VisualAcuity()));
                              },
                              title: Text("Visual Acuity",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500)),
                              trailing: Icon(nabbdaIcons.arrow,
                                  color: Color(0xFF0880AE), size: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30)
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
