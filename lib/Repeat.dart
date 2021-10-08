import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/icons/Correct.dart';

class Repeat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 60, right: 60, top: 200),
        child: Dialog(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
              width: 80,
              height: 400,
              child: Column(children: [
                Column(children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.close, color: Color(0xFF0880AE)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Text("Repeat",
                          style: TextStyle(
                              color: Color(0xFF0880AE),
                              fontWeight: FontWeight.bold,
                              fontSize: 25))),
                ]),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(children: [
                      ListTile(
                          contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text("Never",
                              style: TextStyle(
                                  color: Color(0xFFBDBDBD),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          onTap: () {}),
                      ListTile(
                        contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text(
                          "Every Day",
                          style: TextStyle(
                              color: Color(0xFFBDBDBD),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        onTap: () {},
                        trailing: Icon(Correct.correct,
                            color: Color(0xFF0880AE), size: 18),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text("Every Week",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        onTap: () {},
                      ),
                      ListTile(
                          contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text("Every 2 Weeks",
                              style: TextStyle(
                                  color: Color(0xFFBDBDBD),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          onTap: () {}),
                      ListTile(
                        contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text("Every Month",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        onTap: () {},
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(bottom: 0, top: 0),
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text("Every Year",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        onTap: () {},
                      ),
                    ])),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Save", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(110, 38),
                    primary: Color(0xFF0880AE),
                    elevation: 0,
                  ),
                ),
              ])),
        ));
  }
}
