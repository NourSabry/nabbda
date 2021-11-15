import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/components/OurCustomerDivider.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/MyAppBar.dart';

class ThyroidDisease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
        Title: "ThyroidDisease",
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
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OurlistTile(
                        tileName: "Tsh",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
                    CustomDivider(),
                    OurlistTile(
                        tileName: "T3",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
                    CustomDivider(),
                    OurlistTile(
                        tileName: "T4",
                        trail: Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF6E78F7), size: 20),
                        function: () {}),
                    CustomDivider(),
                    OurlistTile(
                        tileName: "PTH",
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
