import 'package:flutter/material.dart';
import 'package:nabbda/SmokingAlert.dart';

class ASCVDRisk extends StatefulWidget {
  const ASCVDRisk({Key? key}) : super(key: key);

  @override
  State<ASCVDRisk> createState() => _ASCVDRisk();
}

class _ASCVDRisk extends State<ASCVDRisk> {
  var Age;
  var value1;
  var value2;
  var value3;
  var value4;
  var value5;
  var value6;
  var value7;
  var value8;
  var value9;
  var _value;

  var DiastolicBloodPressure;
  var SystolicBloodPressure;
  var Cholesterol;
  var HDLCholesterol;
  var LDLCholesterol;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
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
                  Text("ASCVD Risk  ",
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Theme(
                      data: ThemeData(unselectedWidgetColor: Color(0xFF6E78F7)),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                    onSaved: (value) {
                                      Age = value;
                                    },
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0),
                                      labelText: "Current Age: ",
                                      labelStyle: TextStyle(
                                          color: Color(0xFF707070),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFCCCCCC)),
                                      ),
                                    ),
                                    initialValue: "40",
                                    style: TextStyle(
                                        color: Color(0xFF3B3C55),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text("Age must be between 20-79",
                                      style: TextStyle(
                                        color: Color(0XFF707070),
                                        fontSize: 12,
                                      )),
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Sex:",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value1,
                                          onChanged: (value) {
                                            setState(() {
                                              value1 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Male",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value1,
                                          onChanged: (value) {
                                            setState(() {
                                              value1 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Female",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Race:",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value2,
                                          onChanged: (value) {
                                            setState(() {
                                              value2 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("White",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value2,
                                          onChanged: (value) {
                                            setState(() {
                                              value2 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("African American",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      visualDensity: VisualDensity(
                                          horizontal: -4, vertical: -4),
                                      value: 3,
                                      groupValue: value2,
                                      onChanged: (value) {
                                        setState(() {
                                          value2 = value;
                                        });
                                      },
                                      activeColor: Color(0xFF6E78F7),
                                    ),
                                    Text("Other",
                                        style: TextStyle(
                                            color: Color(0xFF3B3C55),
                                            fontSize: 17)),
                                  ],
                                ),
                                TextFormField(
                                  onSaved: (value) {
                                    SystolicBloodPressure = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 40, left: 0, right: 0, top: 0),
                                    labelText:
                                        "Systolic Blood Pressure (mm Hg): ",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Value must be between 90-200",
                                    style: TextStyle(
                                        color: Color(0XFF707070), fontSize: 12),
                                  ),
                                ),
                                TextFormField(
                                  onSaved: (value) {
                                    DiastolicBloodPressure = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 40, left: 0, right: 0, top: 0),
                                    labelText:
                                        "Diastolic Blood Pressure (mm Hg): ",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Value must be between 60-130",
                                    style: TextStyle(
                                        color: Color(0XFF707070), fontSize: 12),
                                  ),
                                ),
                                TextFormField(
                                  onSaved: (value) {
                                    Cholesterol = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 40, left: 0, right: 0, top: 0),
                                    labelText: "Total Cholesterol (mg/dL):",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "Value must be between 130 - 320",
                                        style: TextStyle(
                                            color: Color(0XFF707070),
                                            fontSize: 12))),
                                TextFormField(
                                  onSaved: (value) {
                                    HDLCholesterol = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 40, left: 0, right: 0, top: 0),
                                    labelText: "HDL Cholesterol (mg/dL):",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "Value must be between 20 - 100",
                                        style: TextStyle(
                                            color: Color(0XFF707070),
                                            fontSize: 12))),
                                TextFormField(
                                  onSaved: (value) {
                                    LDLCholesterol = value;
                                  },
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        bottom: 40, left: 0, right: 0, top: 0),
                                    labelText: "LDL Cholesterol (mg/dL): ",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFCCCCCC)),
                                    ),
                                  ),
                                ),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Value must be between 30-300",
                                        style: TextStyle(
                                            color: Color(0XFF707070),
                                            fontSize: 12))),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("History of Diabetes? ",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value3,
                                          onChanged: (value) {
                                            setState(() {
                                              value3 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Yes",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value3,
                                          onChanged: (value) {
                                            setState(() {
                                              value3 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("No",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("Smoker?",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value4,
                                          onChanged: (value) {
                                            setState(() {
                                              value4 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Current",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 30),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value4,
                                          onChanged: (value) {
                                            setState(() {
                                              value4 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Former",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 30),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 3,
                                          groupValue: value4,
                                          onChanged: (value) {
                                            setState(() {
                                              value4 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Never",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "How long ago did patient quit smoking? ",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () => showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        SmokingAlert(),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFE4E4E4),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        value: _value,
                                        items: [],
                                        elevation: 0,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconDisabledColor: Color(0xFF6E78F7),
                                        iconEnabledColor: Color(0xFF6E78F7),
                                        isExpanded: true,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("On Hypertension Treatment?",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value5,
                                          onChanged: (value) {
                                            setState(() {
                                              value5 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Yes",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value5,
                                          onChanged: (value) {
                                            setState(() {
                                              value5 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("No",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("On a Statin?",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value6,
                                          onChanged: (value) {
                                            setState(() {
                                              value6 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Yes",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value6,
                                          onChanged: (value) {
                                            setState(() {
                                              value6 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("No",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("On Aspirin Therapy?",
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 1,
                                          groupValue: value7,
                                          onChanged: (value) {
                                            setState(() {
                                              value7 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("Yes",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                    SizedBox(width: 60),
                                    Row(
                                      children: [
                                        Radio(
                                          visualDensity: VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          value: 2,
                                          groupValue: value7,
                                          onChanged: (value) {
                                            setState(() {
                                              value7 = value;
                                            });
                                          },
                                          activeColor: Color(0xFF6E78F7),
                                        ),
                                        Text("No",
                                            style: TextStyle(
                                                color: Color(0xFF3B3C55),
                                                fontSize: 17))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 30),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Calculate",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF6E78F7),
                                    minimumSize: Size(155, 48),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
