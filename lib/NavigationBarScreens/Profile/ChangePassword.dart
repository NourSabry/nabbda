import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFF2F2E41)),
          ),
          title: Text("Back",
              style: TextStyle(
                  color: Color(0xFF2F2E41),
                  fontSize: 17,
                  fontWeight: FontWeight.bold))),
      body: Column(children: [
        SizedBox(height: 70),
        Text("Change Password",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D2D2D))),
        SizedBox(height: 40),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: true,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "New password",
                hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                prefixIcon: Icon(Icons.lock_outline, color: Color(0xFFF9F9F9)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xFFF9F9F9))),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: InputBorder.none,
                filled: true,
                fillColor: Color(0xFFF9F9F9),
              ),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: TextFormField(
                obscureText: true,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                  hintText: "Confirm new Password",
                  hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
                  prefixIcon:
                      Icon(Icons.lock_outline, color: Color(0xFFF9F9F9)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFF9F9F9))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFF9F9F9))),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                ))),
        SizedBox(height: 10),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: SizedBox(
                height: 60,
                width: 250,
                child: TextButton(
                  onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            content: Builder(builder: (context) {
                              return Container(
                                  width: 500,
                                  height: 240,
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/success.svg"),
                                      SizedBox(height: 8),
                                      Text("Changed successfully!",
                                          style: TextStyle(
                                            color: Color(0xFF6E78F7),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      SizedBox(height: 10),
                                      Text(
                                        "Password has been changed ",
                                        style: TextStyle(
                                            color: Color(0xFF9E9E9E),
                                            fontSize: 14),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 50),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                              color: Color(0xFF6E78F7),
                                              fontSize: 16),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: Size(242, 54),
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF6E78F7)),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(10.0),
                                          ),
                                          primary: Colors.white,
                                          elevation: 0.0,
                                        ),
                                      ),
                                    ],
                                  ));
                            }),
                          )),
                  child: Text("Change",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.normal)),
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6E78F7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ))),
      ]),
    );
  }
}
