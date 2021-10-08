import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
          ),
          title: Text("Back", style: TextStyle(color: Color(0xFF3B3C55))),
        ),
        body: Center(
            child: Column(children: [
          SizedBox(height: 60),
          Text(
            "Error",
            style: TextStyle(
                color: Color(0xFF707070),
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),
          Text("Please Complete Your Data",
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 40),
          Image.asset("assets/images/data.png")
        ])));
  }
}
