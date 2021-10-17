import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
        ),
        title: Text("Atherosclerosis Risk",
            style: TextStyle(
                color: Color(0xFF3B3C55),
                fontSize: 22,
                fontWeight: FontWeight.w600)),
      ),
      body: Theme(
        data: ThemeData(unselectedWidgetColor: Color(0xFF0880AE)),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "Heart attack or coronary bypass surgery ",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "Stroke or transient ischemic attack (TIA)",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "Peripheral artery disease — reduced blood flow in arteries in your legs, arms or other areas",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "Angioplasty or stent placement — a procedure to open narrowed or clogged arteries by placing a small tube (stent) in an artery to keep it open and prevent it from narrowing",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "Abdominal aortic aneurysm — enlargement of the lower area of the major blood vessel (aorta) that supplies blood to the body",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
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
                activeColor: Color(0xFF0880AE),
                title: Text(
                  "None of the above",
                  style: TextStyle(color: Color(0XFF707070), fontSize: 14),
                ),
                value: isChecked5,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked5 = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
