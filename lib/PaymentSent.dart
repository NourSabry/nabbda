import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';

class PayemntSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Sent.png"),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                          "We have sent the reservation details to email address",
                          style: TextStyle(
                              color: Color(0xFF313450),
                              fontWeight: FontWeight.bold,
                              fontSize: 12))),
                  NabbdaButton(
                    Name: "Done",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
