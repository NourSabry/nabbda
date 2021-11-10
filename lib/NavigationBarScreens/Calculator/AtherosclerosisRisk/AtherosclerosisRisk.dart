import 'package:flutter/material.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/AtherosclerosisRisk/AtherosclerosisRisk1.dart';
import 'package:nabbda/components/OurCheckboxListTile.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';

class AtherosclerosisRisk extends StatefulWidget {
  const AtherosclerosisRisk({Key? key}) : super(key: key);

  @override
  State<AtherosclerosisRisk> createState() => _AtherosclerosisRisk();
}

class _AtherosclerosisRisk extends State<AtherosclerosisRisk> {
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
      appBar: myAppBar(
        myIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
        Title: "Atherosclerosis Risk ",
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Theme(
                data: ThemeData(unselectedWidgetColor: Color(0xFF6E78F7)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                          "Have you ever had any of the following conditions or procedures?",
                          style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      OurCheckboxListTile(
                        text: "Heart attack or coronary bypass surgery ",
                        isChecked: isChecked,
                        function: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      OurCheckboxListTile(
                        text: "Stroke or transient ischemic attack (TIA)",
                        isChecked: isChecked1,
                        function: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                      OurCheckboxListTile(
                        text:
                            "Peripheral artery disease — reduced blood flow in arteries in your legs, arms or other areas",
                        isChecked: isChecked2,
                        function: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                      OurCheckboxListTile(
                        text:
                            "Angioplasty or stent placement — a procedure to open narrowed or clogged arteries by placing a small tube (stent) in an artery to keep it open and prevent it from narrowing",
                        isChecked: isChecked3,
                        function: (bool? value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                      OurCheckboxListTile(
                        text:
                            "Abdominal aortic aneurysm — enlargement of the lower area of the major blood vessel (aorta) that supplies blood to the body",
                        isChecked: isChecked4,
                        function: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        },
                      ),
                      OurCheckboxListTile(
                        text: "None of the above",
                        isChecked: isChecked5,
                        function: (bool? value) {
                          setState(() {
                            isChecked5 = value!;
                          });
                        },
                      ),
                      NabbdaButton(
                        Name: "Next",
                        function: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AtherosclerosisRisk1()));
                        },
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
