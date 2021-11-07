import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/icons/MyIcon.dart';

class SmokingAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 400,
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Unknown",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Less than 6 months ago",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFDCE6EB)),
                    child: ListTile(
                      title: Text("6 months - 1.5 years ago ",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      onTap: () {},
                      trailing: Icon(NabdaIcons.correct,
                          color: Color(0xFF6E78F7), size: 15),
                    ),
                  ),
                  ListTile(
                    title: Text("1.5 - 2.5 years ago",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("2.5 - 3.5 years ago",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("3.5 - 5 years ago",
                        style: TextStyle(
                            color: Color(0XFFBDBDBD),
                            fontWeight: FontWeight.w600,
                            fontSize: 16)),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "More than 5 years ago",
                      style: TextStyle(
                          color: Color(0XFFBDBDBD),
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
