import 'package:flutter/material.dart';
import 'package:nabbda/components/NabbdaButton.dart';

class ChangeProfilePicture extends StatelessWidget {
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text("Change Profile Picture ",
                style: TextStyle(
                    color: Color(0xFF2D2D2D),
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 45),
            Container(
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/changeProfilePicture.jpg',
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Upload file scan ",
              style: TextStyle(
                color: Color(0xFF707070),
                fontSize: 13,
              ),
            ),
            Text("Max Size: 10 MB",
                style: TextStyle(color: Color(0xFF707070), fontSize: 13)),
            SizedBox(height: 30),
            NabbdaButton(
              function: () {},
              Name: "Change",
            ),
          ],
        ),
      ),
    );
  }
}
