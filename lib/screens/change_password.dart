import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/text_field.dart';
import 'package:nabbda/utility/alerts.dart';

class ChangePasswordScreen extends StatelessWidget {
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
                TextFieldInput(
                  hint: "New password",
                  icon: Icon(Icons.lock, color: Color(0xFFBDBDBD), size: 20),
                  function: (v) {},
                  onTap: () {},
                ),
                TextFieldInput(
                  hint: "Confirm new password",
                  icon: Icon(Icons.lock, color: Color(0xFFBDBDBD), size: 20),
                  function: (v) {},
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          RegisterButton(
            function: () {
              Utility.showAlertSuccess(context);
            },
            label: "Change",
          )
        ],
      ),
    );
  }
}
