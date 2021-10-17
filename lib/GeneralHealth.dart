import 'package:flutter/material.dart';
import 'package:nabbda/icons/Arrow.dart';

class GeneralHealth extends StatelessWidget {
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
            title: Text("General Health Monitoring",
                style: TextStyle(
                    color: Color(0xFF3B3C55), fontWeight: FontWeight.w500))),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(children: [
                    ListTile(
                      onTap: () {},
                      title: Text("Cholestrol",
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
                      title: Text("Triglyceride",
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
                      title: Text("HDL ",
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
                      title: Text("LDL ",
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
                      title: Text("Hemoglobin ",
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
                      title: Text("RBC",
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
                      title: Text("WBC",
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
                      title: Text("Platelets",
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
                      title: Text("Calcium",
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
                      title: Text("Vitamin -D",
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
                      title: Text("Vitamin B12",
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
                      title: Text("CO2",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF707070),
                              fontWeight: FontWeight.w500)),
                      trailing:
                          Icon(Arrow.arrow, color: Color(0xFF0880AE), size: 30),
                    ),
                  ]))),
          SizedBox(height: 30)
        ])));
  }
}
