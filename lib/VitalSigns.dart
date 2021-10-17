import 'package:flutter/material.dart';
import 'package:nabbda/icons/Arrow.dart';

class VitalSigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
            backgroundColor: Color(0xFFF5F5F5),
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55))),
            title: Text("Vital Signs",
                style: TextStyle(
                    color: Color(0xFF3B3C55), fontWeight: FontWeight.w500))),
        body: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 230),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(children: [
                  ListTile(
                    onTap: () {},
                    title: Text("Heart Rate",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
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
                    title: Text("Respiratory Rate",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
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
                    title: Text("Body Temperature ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
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
                    title: Text("Blood Pressure ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
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
                    title: Text("Random Blood Glucose  ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
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
                    title: Text("O2 Saturation Level",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w500)),
                    trailing:
                        Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
                  ),
                ]))));
  }
}
