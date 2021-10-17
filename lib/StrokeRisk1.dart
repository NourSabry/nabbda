import 'package:flutter/material.dart';

class StrokeRisk1 extends StatelessWidget {
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
        title: Text("Stroke Risk",
            style: TextStyle(
                color: Color(0xFF3B3C55),
                fontSize: 22,
                fontWeight: FontWeight.w600)),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  child: RichText(
                      text: TextSpan(
                          text: "Your Stroke Risk Disease is ",
                          style: TextStyle(
                              color: Color(0xFF707070),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                        TextSpan(
                            text: "25%",
                            style: TextStyle(
                                color: Color(0xFF0880AE),
                                fontSize: 18,
                                fontWeight: FontWeight.w600))
                      ]))),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: Text("You need to …",
                    style: TextStyle(color: Color(0xFF707070), fontSize: 10)),
              ),
            ],
          )),
    );
  }
}
