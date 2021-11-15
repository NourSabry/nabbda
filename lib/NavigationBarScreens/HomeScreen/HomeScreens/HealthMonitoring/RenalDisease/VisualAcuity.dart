import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/components/OurCustomerDivider.dart';

class VisualAcuity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        Title: "Visual Acuity",
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
              left: 0, right: 0, top: 0, bottom: 550, child: PurpleContainer()),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OurlistTile(
                        tileName: "Blood Urea Nitrogen",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
                    CustomDivider(),
                    OurlistTile(
                        tileName: "Glomerular Filtration Rate (GFR)",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
                    CustomDivider(),
                    OurlistTile(
                        tileName: "Urine Albumin",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
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
