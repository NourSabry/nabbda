import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
          width: 400,
          height: 280,
          child: Column(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Seacrh in ",
                        style: TextStyle(color: Color(0xFFBDBDBD)),
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onTap: () {},
                      title: Text("Medical Analysis ",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box, color: Color(0xFF6E78F7)),
                        onPressed: () {},
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onTap: () {},
                      title: Text("Medical Reports ",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box_outline_blank_rounded,
                            color: Color(0xFFBDBDBD)),
                        onPressed: () {},
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onTap: () {},
                      title: Text("Previous Prescriptions ",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box, color: Color(0xFF6E78F7)),
                        onPressed: () {},
                      )),
                  ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onTap: () {},
                      title: Text("Radiology Reports  ",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box_outline_blank_rounded,
                            color: Color(0xFFBDBDBD)),
                        onPressed: () {},
                      )),
                ])),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {},
              child: Text("Done", style: TextStyle(color: Color(0xFF6E78F7))),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(208, 48),
                side: BorderSide(color: Color(0xFF6E78F7), width: 1),
                primary: Colors.white,
                elevation: 0,
              ),
            ),
          ])),
    );
  }
}