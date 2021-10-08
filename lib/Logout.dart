import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.white,
            insetPadding: EdgeInsets.all(10),
            child: Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: 400,
                  height: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text("Amr Hassan",
                          style: TextStyle(
                              color: Color(0xFF3B3C55),
                              fontSize: 25,
                              fontWeight: FontWeight.normal)),
                      SizedBox(height: 30),
                      Text("Are you sure you want to log out from PMR?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF9E9E9E), fontSize: 14)),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(400, 60),
                                side: BorderSide(
                                    width: 1, color: Color(0xFF0880AE)),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                primary: Color(0xFF0880AE),
                                elevation: 0.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Log out",
                              style: TextStyle(
                                  color: Color(0xFF0880AE), fontSize: 17),
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 60),
                              side: BorderSide(width: 1, color: Colors.blue),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0),
                              ),
                              primary: Colors.white,
                              elevation: 0.0,
                            ),
                          )),
                        ],
                      ),
                    ],
                  )),
            ])));
  }
}
