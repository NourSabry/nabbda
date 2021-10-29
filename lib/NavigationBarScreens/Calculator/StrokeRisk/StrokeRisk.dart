import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/StrokeRisk/StrokeRisk1.dart';

class StrokeRisk extends StatefulWidget {
  const StrokeRisk({Key? key}) : super(key: key);

  @override
  State<StrokeRisk> createState() => _StrokeRisk();
}

class _StrokeRisk extends State<StrokeRisk> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        color: Color(0xFFF5F5F5),
        child: Stack(
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
                  Text("Stroke Risk",
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
              top: 100,
              bottom: 20,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6E78F7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                    height: 800,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Theme(
                      data: ThemeData(unselectedWidgetColor: Color(0xFF6E78F7)),
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Text(
                                "Have you ever had any of the following conditions or procedures?",
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "Heart attack or coronary bypass surgery ",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "Stroke or transient ischemic attack (TIA)",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "Peripheral artery disease — reduced blood flow in arteries in your legs, arms or other areas",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked2,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked2 = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "Angioplasty or stent placement — a procedure to open narrowed or clogged arteries by placing a small tube (stent) in an artery to keep it open and prevent it from narrowing",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked3,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked3 = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "Abdominal aortic aneurysm — enlargement of the lower area of the major blood vessel (aorta) that supplies blood to the body",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked4,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked4 = value!;
                                });
                              },
                            ),
                            CheckboxListTile(
                              contentPadding: EdgeInsets.all(0),
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Color(0xFF6E78F7),
                              title: Text(
                                "None of the above",
                                style: TextStyle(
                                    color: Color(0XFF707070), fontSize: 14),
                              ),
                              value: isChecked5,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked5 = value!;
                                });
                              },
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => StrokeRisk1()));
                              },
                              child: Text("Calculate",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16)),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF6E78F7),
                                minimumSize: Size(155, 48),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
