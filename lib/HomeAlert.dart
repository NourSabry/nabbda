import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAlert extends StatefulWidget {
  @override
  _HomeAlert createState() => _HomeAlert();
}

class _HomeAlert extends State<HomeAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 223,
        width: 290,
        child: AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          title: SvgPicture.asset("assets/images/Group.svg"),
          content: Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Text(
              "NABBDA app want to turn the bluetooth ON for this device",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF467688), fontSize: 13),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "DENY",
                style: TextStyle(
                  color: Color(0xFF467688),
                  fontSize: 14,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "ALLOW",
                style: TextStyle(
                  color: Color(0xFF467688),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
