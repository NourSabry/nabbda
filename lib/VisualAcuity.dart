import 'package:flutter/material.dart';
import 'package:nabbda/icons/Arrow.dart';

class VisualAcuity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF6E78F7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 25,
            bottom: 570,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Text("Visual Acuity",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 80,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        title: Text("Blood Urea Nitrogen",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.w500)),
                        trailing: Icon(Arrow.arrow,
                            color: Color(0xFF6E78F7), size: 30),
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
                        title: Text("Glomerular Filtration Rate (GFR)",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.w500)),
                        trailing: Icon(Arrow.arrow,
                            color: Color(0xFF6E78F7), size: 30),
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
                        title: Text("Urine Albumin",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF707070),
                                fontWeight: FontWeight.w500)),
                        trailing: Icon(Arrow.arrow,
                            color: Color(0xFF6E78F7), size: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
