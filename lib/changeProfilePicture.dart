import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Container(
                    child: Column(children: [
                  Text("Upload file scan ",
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 13,
                      )),
                  Text("Max Size: 10 MB",
                      style: TextStyle(color: Color(0xFF707070), fontSize: 13)),
                ])),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                    height: 60,
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Change",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.normal)),
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFF6E78F7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
