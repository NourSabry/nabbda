import 'package:flutter/material.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/BackgroundContainer.dart';

class HeartRisk2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: myAppBar(
          Title: "Heart Risk",
          myIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Your Heart Risk Disease is ",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                        children: <TextSpan>[
                          TextSpan(
                              text: "25%",
                              style: TextStyle(
                                  color: Color(0xFF6E78F7),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topLeft,
                      child: Text("You need to …",
                          style: TextStyle(
                              color: Color(0xFF707070), fontSize: 14)),
                    ),
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
