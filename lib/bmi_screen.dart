import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double _value = 0.00;
  double _value3 = 0.00;
  double _value4 = 0.00;
  var val;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        title: Text("Body Mass Index (BMI)",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        backgroundColor: Color(0xFF6E78F7),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: size.width * 0.06,
            color: Colors.white,
          ),
        ),
      ),
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
              left: 15,
              right: 15,
              top: 20,
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
                    padding: EdgeInsets.only(
                        left: size.width * 0.08, right: size.width * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Theme(
                      data: ThemeData(unselectedWidgetColor: Color(0XFF6E78F7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: size.height * 0.04),
                          Text("What is Body Mass Calculator?",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF707070))),
                          SizedBox(height: size.height * 0.01),
                          Text(
                              "Body Mass Index (BMI) Calculator is a tool\n for assessing normal weight or overweight. Weight is assessed by using body mass index, which examines the relationship between height and body weight.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF707070),
                                  height: 1.4)),
                          SizedBox(height: size.height * 0.05),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.withOpacity(0.1),
                              //     spreadRadius: 5,
                              //     blurRadius: 7,
                              //     offset: Offset(0, 3), // changes position of shadow
                              //   ),
                              // ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/Female.svg",
                                            height: size.height * 0.07),
                                        SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Radio(
                                              visualDensity: VisualDensity(
                                                  horizontal: -4, vertical: -4),
                                              value: 1,
                                              groupValue: val,
                                              onChanged: (value) {
                                                setState(() {
                                                  val = value;
                                                });
                                              },
                                              activeColor: Color(0xFF6E78F7),
                                            ),
                                            Text("Female",
                                                style: TextStyle(
                                                    color: Color(0xFF3B3C55),
                                                    fontSize: 17)),
                                            SizedBox(width: 20)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/images/Male.svg",
                                            height: size.height * 0.07),
                                        SizedBox(
                                          height: 8,
                                          width: 10,
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              visualDensity: VisualDensity(
                                                  horizontal: -4, vertical: -4),
                                              value: 2,
                                              groupValue: val,
                                              onChanged: (value) {
                                                setState(() {
                                                  val = value;
                                                });
                                              },
                                              activeColor: Color(0XFF6E78F7),
                                            ),
                                            Text("Male",
                                                style: TextStyle(
                                                    color: Color(0xFF3B3C55),
                                                    fontSize: 17))
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: size.height * 0.03, width: 20),
                                Row(
                                  children: [
                                    Text("Age",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF3B3C55))),
                                    SizedBox(width: 15),
                                    Container(
                                      width: size.width * 0.4,
                                      child: Slider(
                                        thumbColor: Color(0xFF6E78F7),
                                        activeColor: Color(0xFF6E78F7),
                                        min: 0,
                                        max: 100,
                                        value: _value,
                                        onChanged: (value) {
                                          setState(() {
                                            _value = value;
                                          });
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF7BC1DB),
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Text(_value.toString(),
                                          style: TextStyle(
                                              color: Color(0xFF3B3C55),
                                              fontSize: 14)),
                                    ),
                                    SizedBox(width: 8),
                                    Text("Years",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF3B3C55))),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.01),
                                Row(
                                  children: [
                                    Text("Length",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF3B3C55))),
                                    Container(
                                      width: size.width * 0.4,
                                      child: Slider(
                                          thumbColor: Color(0xFF6E78F7),
                                          activeColor: Color(0xFF6E78F7),
                                          value: _value3,
                                          min: 0,
                                          max: 100,
                                          onChanged: (double val) {
                                            setState(() {
                                              _value3 = val;
                                            });
                                          }),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF7BC1DB),
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Text(_value3.toString(),
                                          style: TextStyle(
                                              color: Color(0xFF3B3C55))),
                                    ),
                                    SizedBox(width: 8),
                                    Text("Cm",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF3B3C55))),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.01),
                                Row(
                                  children: [
                                    Text("Weight",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF3B3C55))),
                                    Container(
                                      width: size.width * 0.4,
                                      child: Slider(
                                          thumbColor: Color(0xFF6E78F7),
                                          activeColor: Color(0xFF6E78F7),
                                          value: _value4,
                                          min: 0,
                                          max: 100,
                                          onChanged: (double val) {
                                            setState(() {
                                              _value4 = val;
                                            });
                                          }),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF7BC1DB),
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      child: Text(_value4.toString(),
                                          style: TextStyle(
                                              color: Color(0xFF3B3C55))),
                                    ),
                                    SizedBox(width: 8),
                                    Text("Kg",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF3B3C55))),
                                  ],
                                ),
                                SizedBox(height: size.height * 0.04),
                                SizedBox(
                                  height: 48,
                                  width: 208,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Calculate",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0XFF6E78F7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
