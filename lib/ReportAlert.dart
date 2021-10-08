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
          height: 320,
          child: Column(children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Seacrh in ",
                        style: TextStyle(color: Color(0xFFBDBDBD)),
                      )),
                  ListTile(
                      onTap: () {},
                      title: Text("Medical Analysis ",
                          style: TextStyle(
                              color: Color(0xFF0880AE),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box, color: Color(0xFF0880AE)),
                        onPressed: () {},
                      )),
                  ListTile(
                      onTap: () {},
                      title: Text("Medical Reports ",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box_outline_blank_rounded,
                            color: Color(0xFFBDBDBD)),
                        onPressed: () {},
                      )),
                  ListTile(
                      onTap: () {},
                      title: Text("Previous Prescriptions ",
                          style: TextStyle(
                              color: Color(0xFF0880AE),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box, color: Color(0xFF0880AE)),
                        onPressed: () {},
                      )),
                  ListTile(
                      onTap: () {},
                      title: Text("Radiology Reports  ",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                      trailing: IconButton(
                        icon: Icon(Icons.check_box_outline_blank_rounded,
                            color: Color(0xFFBDBDBD)),
                        onPressed: () {},
                      )),
                ])),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {},
              child: Text("Done", style: TextStyle(color: Color(0xFF0880AE))),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(208, 48),
                side: BorderSide(color: Color(0xFF0880AE), width: 1),
                primary: Colors.white,
                elevation: 0,
              ),
            ),
          ])),
    );
  }
}
