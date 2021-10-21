import 'package:flutter/material.dart';

class OnTapped extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: double.infinity,
        height: 300,
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Text("March 1992",
                    style: TextStyle(
                        color: Color(0xFF6E78F7),
                        fontSize: 18,
                        fontWeight: FontWeight.w600))),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text(
                  "January ",
                  style: TextStyle(color: Color(0xFF9E9E9E)),
                ),
                trailing: Text(
                  "1990",
                  style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ListTile(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text("February ",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 18)),
                  trailing: Text("1991",
                      style:
                          TextStyle(color: Color(0xFF9E9E9E), fontSize: 18))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                tileColor: Color(0xFFE4E4E4),
                title: Text("March",
                    style: TextStyle(
                        color: Color(0xFF3B3C55),
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                trailing: Text("1992",
                    style: TextStyle(
                        color: Color(0xFF3B3C55),
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                title: Text("April",
                    style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 18)),
                trailing: Text("1993",
                    style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 18)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: ListTile(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                  visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                  title: Text("May",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 18)),
                  trailing: Text("1994",
                      style:
                          TextStyle(color: Color(0xFF9E9E9E), fontSize: 18))),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
