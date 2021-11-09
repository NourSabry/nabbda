import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PasswordAlert.dart';

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
      body: Column(
        children: [
          SizedBox(height: 50),
          Text("Change Password",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D2D2D))),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                OurTextField(
                  hint: "New password",
                  prefix: Icon(Icons.lock, color: Color(0xFFBDBDBD), size: 20),
                ),
                SizedBox(height: 20),
                OurTextField(
                  hint: "Confirm new password",
                  prefix: Icon(Icons.lock, color: Color(0xFFBDBDBD), size: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          NabbdaButton(
              function: () => showDialog<String>(
                    barrierColor: Color(0xFF707070),
                    context: context,
                    builder: (BuildContext context) => PasswordAlert(),
                  ),
              Name: "Change"),
        ],
      ),
    );
  }
}
