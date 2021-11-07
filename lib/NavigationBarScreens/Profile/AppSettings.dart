import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/icons/MyIcon.dart';

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
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "More :",
                            style: TextStyle(
                                color: Color(0xFF6E78F7),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              OurlistTile(
                                tileName: "About us",
                                lead: Icon(nabbdaIcons.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              OurlistTile(
                                tileName: "Terms and conditions ",
                                lead: Icon(nabbdaIcons.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              OurlistTile(
                                tileName: "Privacy Policy",
                                lead: Icon(nabbdaIcons.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              OurlistTile(
                                tileName: "Change Password",
                                lead: Icon(nabbdaIcons.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                      color: Color(0xFFFF3737),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
