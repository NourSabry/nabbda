import 'package:flutter/material.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/OurTextField.dart';
import 'package:nabbda/components/PasswordAlert.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  _NewPassword createState() => _NewPassword();
}

class _NewPassword extends State<NewPassword> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var mobilePhone;
  String contentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(
        Title: "Back",
        myIcon: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: SingleChildScrollView(
              child: BackgroundContainer(
                widget: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 40),
                        Center(
                          child: Image.asset(
                            "assets/images/open.png",
                          ),
                        ),
                        SizedBox(height: 30),
                        Text("New Password",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2D2D2D),
                            )),
                        SizedBox(height: 30),
                        OurTextField(
                          hint: "New Password",
                          prefix: Icon(Icons.lock,
                              color: Color(0xFFBDBDBD), size: 20),
                        ),
                        SizedBox(height: 5),
                        OurTextField(
                            hint: "Confirm New Password",
                            prefix: Icon(Icons.lock,
                                color: Color(0xFFBDBDBD), size: 20)),
                        SizedBox(height: 30),
                        NabbdaButton(
                          function: () => showDialog<String>(
                            barrierColor: Color(0xFF707070),
                            context: context,
                            builder: (BuildContext context) => PasswordAlert(),
                          ),
                          Name: "Change",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
