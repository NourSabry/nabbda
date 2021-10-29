import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OpenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF6E78F7),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset("assets/images/heart.svg"),
          Text("NABBDA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 27,
              )),
          SizedBox(height: 120),
          SvgPicture.asset(
            "assets/images/nabbda.svg",
          ),
        ])));
  }
}
