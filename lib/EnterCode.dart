import 'package:flutter/material.dart';
import 'package:nabbda/NewPassword.dart';
import 'package:custom_timer/custom_timer.dart';

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

  final CustomTimerController _controller = new CustomTimerController();

  void _saveForm() {
    _formKey.currentState!.save();
  }

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
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3B3C55),
            ),
          ),
          title: Text("Back",
              style: TextStyle(
                color: Color(0xFF3B3C55),
              )),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 40),
                  Image.asset("assets/images/code.jpg"),
                  SizedBox(height: 30),
                  Text("Enter Code",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2D2D2D),
                          fontSize: 22)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Please enter the code sent to your mobile number",
                      style: TextStyle(color: Color(0xFF9E9E9E), fontSize: 14)),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      width: 325,
                      child: TextFormField(
                        onSaved: (value) {
                          code = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            setState(() {
                              newContent =
                                  "Code successfully send, please check your phone!";
                            });
                            return "";
                          } else if (value.length != 4) {
                            setState(() {
                              newContent =
                                  "Wrong code! Enter the right one now";
                            });
                            return "";
                          } else {
                            return null;
                          }
                        },
                        autofocus: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          hintText: "Enter code",
                          hintStyle:
                              TextStyle(fontSize: 14, color: Color(0xFFBDBDBD)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xFFF1F1F1)),
                          ),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Color(0xFFF1F1F1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "     Code expires in :",
                          style:
                              TextStyle(color: Color(0xFFBDBDBD), fontSize: 12),
                        ),
                        CustomTimer(
                          controller: _controller,
                          from: Duration(seconds: 34),
                          to: Duration(minutes: 0),
                          interval: Duration(seconds: 1),
                          builder: (CustomTimerRemainingTime remaining) {
                            return Text(
                              "${remaining.minutes}:${remaining.seconds}",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xFFD9544F)),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 48,
                    width: 208,
                    child: TextButton(
                      onPressed: () {
                        _controller.start();
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
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.red,
                                        style: BorderStyle.solid,
                                      ),
                                    ),
                                    child: Row(children: [
                                      SizedBox(width: 15),
                                      Icon(Icons.cancel,
                                          color: Colors.white, size: 30),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("$newContent",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ]))),
                          );
                        }
                      },
                      child: Text(
                        "Send",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF0880AE),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                                color: Color(0xFF0880AE),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
