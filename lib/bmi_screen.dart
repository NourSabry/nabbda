import 'package:flutter/material.dart';
import 'package:nabbda/colors.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double _value = 0.00;
  var val;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomizedColors.backk,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,
                size: size.width * 0.06, color: CustomizedColors.bck),
          ),
        ),
        title: Text("Body Mass Index (BMI)",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: CustomizedColors.bck)),
      ),
      body: Theme(
        data: ThemeData(unselectedWidgetColor: Color(0xFF0880AE)),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.04),
                Text("What is Body Mass Calculator?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: CustomizedColors.txtFBo)),
                SizedBox(height: size.height * 0.01),
                Text(
                    "Body Mass Index (BMI) Calculator is a tool\n for assessing normal weight or overweight. Weight is assessed by using body mass index, which examines the relationship between height and body weight.",
                    style: TextStyle(
                        fontSize: 16, color: Color(0xFF707070), height: 1.4)),
                SizedBox(height: size.height * 0.05),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
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
                              Image.asset("assets/images/Female.png",
                                  height: size.height * 0.07),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity(
                                        horizontal: 2, vertical: -4),
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("Female",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/Male.png",
                                  height: size.height * 0.07),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity(
                                        horizontal: 2, vertical: -4),
                                    value: 2,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
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
                      SizedBox(height: size.height * 0.03),
                      Row(
                        children: [
                          Text("Age",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF3B3C55))),
                          SizedBox(width: 15),
                          Container(
                            width: size.width * 0.4,
                            child: Slider(
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
                                color: Color(0xFF5FC0E5),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(_value.toString(),
                                style: TextStyle(
                                    color: Color(0xFF3B3C55), fontSize: 14)),
                          ),
                          SizedBox(width: 8),
                          Text("Years",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF3B3C55))),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: [
                          Text("Length",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF3B3C55))),
                          Container(
                            width: size.width * 0.4,
                            child: Slider(
                                value: _value,
                                min: 0,
                                max: 100,
                                onChanged: (double val) {
                                  setState(() {
                                    _value = val;
                                  });
                                }),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFF5FC0E5),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(_value.toString(),
                                style: TextStyle(color: Color(0xFF3B3C55))),
                          ),
                          SizedBox(width: 8),
                          Text("Cm",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF3B3C55))),
                        ],
                      ),
                      SizedBox(height: size.height * 0.01),
                      Row(
                        children: [
                          Text("Weight",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF3B3C55))),
                          Container(
                            width: size.width * 0.4,
                            child: Slider(
                                value: _value,
                                min: 0,
                                max: 100,
                                onChanged: (double val) {
                                  setState(() {
                                    _value = val;
                                  });
                                }),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color(0xFF5FC0E5),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(_value.toString(),
                                style: TextStyle(color: Color(0xFF3B3C55))),
                          ),
                          SizedBox(width: 8),
                          Text("Kg",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF3B3C55))),
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
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF0880AE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
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
    );
  }
}
