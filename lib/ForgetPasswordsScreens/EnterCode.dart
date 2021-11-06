import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/ForgetPasswordsScreens/NewPassword.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/CustomTimer.dart';
import 'package:nabbda/components/EnterCodeTextField.dart';
import 'package:nabbda/components/NabbdaButton.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var code;
  var mobilePhone;
  String newContent = "";

  void _saveForm() {
    _formKey.currentState!.save();
  }

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
            bottom: 450,
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 40),
                          SvgPicture.asset("assets/images/code.svg"),
                          SizedBox(height: 30),
                          Text("Enter Code",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2D2D2D),
                                  fontSize: 22)),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                              "Please enter the code sent to your mobile number",
                              style: TextStyle(
                                  color: Color(0xFF9E9E9E), fontSize: 14)),
                          SizedBox(
                            height: 30.0,
                          ),
                          EnterCodeTextField(),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Code expires in :",
                                  style: TextStyle(
                                      color: Color(0xFFBDBDBD), fontSize: 12),
                                ),
                                OurCustomTimer(),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          NabbdaButton(
                            Name: "Send",
                            function: () {
                              if (_formKey.currentState!.validate()) {
                                _saveForm();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewPassword()),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.white,
                                      content: Container(
                                          alignment: Alignment.center,
                                          width: 200,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD9544F),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            border: Border.all(
                                              width: 2,
                                              color: Colors.red,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          child: Row(children: [
                                            //      SizedBox(width : 15),
                                            Icon(Icons.cancel,
                                                color: Colors.white, size: 30),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text("$newContent",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ]))),
                                );
                              }
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't get the code?",
                                    style: TextStyle(
                                        color: Color(0xFFBDBDBD), fontSize: 12),
                                  ),
                                  Text(
                                    " Resend code",
                                    style: TextStyle(
                                        color: Color(0xFF6E78F7),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
