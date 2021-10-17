import 'package:flutter/material.dart';
import 'package:nabbda/icons/Arrow.dart';

class DiabetesMonitoring extends StatelessWidget {
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
            title: Text("Diabetes Monitoring",
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
                      title: Text("Fasting Blood Glucose ",
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
                      title: Text("Microalbuminuria",
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
                      title: Text("HbA 1c ",
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
                      title: Text("Insulin level ",
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
                      title: Text("C-peptide ",
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
                      title: Text("Creatinine",
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
                      title: Text("Blood Urea Nitrogen (BUN)",
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
                      title: Text("Blood Ketones",
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
                      title: Text("Proteins in Urine",
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
                      title: Text("Weight",
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
                      title: Text("Visual Acuity",
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
