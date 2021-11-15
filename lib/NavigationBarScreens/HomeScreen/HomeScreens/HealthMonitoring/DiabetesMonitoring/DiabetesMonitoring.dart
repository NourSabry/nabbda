import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/HealthMonitoring/RenalDisease/VisualAcuity.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/components/OurCustomerDivider.dart';

class DiabetesMonitoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        Title: "Diabetes Monitoring",
        myIcon: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
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
              widget: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OurlistTile(
                        tileName: "Fasting Blood Glucose",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Microalbuminuria",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "HbA 1c",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Insulin level ",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "C-peptide ",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Creatinine",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Blood Urea Nitrogen (BUN)",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Blood Ketones",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Proteins in Urine",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Weight",
                        function: () {},
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                      ),
                      CustomDivider(),
                      OurlistTile(
                        tileName: "Visual Acuity",
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VisualAcuity()));
                        },
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
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
