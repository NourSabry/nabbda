import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/RadioButton.dart';

class AppSettings extends StatefulWidget {
  @override
  _AppSettings createState() => _AppSettings();
}

class _AppSettings extends State<AppSettings> {
  var option;
  var Radio1;
  var value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFF6E78F7),
        elevation: 0,
        title: Text(
          "App setting",
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
            bottom: 450,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("Choose Language",
                            style: TextStyle(
                                color: Color(0xFFF707070),
                                fontWeight: FontWeight.w600,
                                fontSize: 12))),
                    Row(children: [
                      OurRadioButton(
                        value: 1,
                        groupValue: Radio1,
                        option: "English",
                      )
                    ])
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
