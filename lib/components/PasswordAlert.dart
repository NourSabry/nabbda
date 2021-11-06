import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      content: Builder(builder: (context) {
        return Container(
            width: 500,
            height: 240,
            child: Column(
              children: [
                SvgPicture.asset("assets/images/success.svg"),
                SizedBox(height: 8),
                Text("Changed successfully!",
                    style: TextStyle(
                      color: Color(0xFF6E78F7),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(height: 10),
                Text(
                  "Password has been changed, return to login and try login again",
                  style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Go to login",
                    style: TextStyle(color: Color(0xFF6E78F7), fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(242, 54),
                    side: BorderSide(width: 1, color: Color(0xFF6E78F7)),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    primary: Colors.white,
                    elevation: 0.0,
                  ),
                ),
              ],
            ));
      }),
    );
  }
}
