import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class PayemntSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        Title: "",
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 450,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 15,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/Sent.png"),
                    SizedBox(height: 20),
                    Center(
                        child: Text(
                            "We have sent the reservation details to email address",
                            style: TextStyle(
                                color: Color(0xFF313450),
                                fontWeight: FontWeight.bold,
                                fontSize: 12))),
                    SizedBox(height: 30),
                    NabbdaButton(Name: "Done")
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
