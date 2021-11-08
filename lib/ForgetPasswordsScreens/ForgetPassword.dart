import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabbda/icons/MyIcon.dart';
import 'package:nabbda/screens/EnterCode.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPassword createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var mobilePhone;
  String contentText = "";

  void _saveForm() {
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xFF6E78F7),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text("Back",
              style: TextStyle(
                color: Colors.white,
              ))),
      body: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 450,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6E78F7),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
              ),
            ),
            Positioned(
              left: 15,
              right: 15,
              top: 20,
              bottom: 20,
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6E78F7),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(height: 40),
                              Center(
                                child: SvgPicture.asset(
                                  "assets/images/lock.svg",
                                ),
                              ),
                              SizedBox(height: 30),
                              Text("Forgot Password",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xFF2D2D2D),
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(height: 10),
                              Text(
                                "Enter your mobile number to reset your password",
                                style: TextStyle(
                                    color: Color(0xFF9E9E9E),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 30),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Container(
                                  width: 325,
                                  child: TextFormField(
                                    onSaved: (value) {
                                      mobilePhone = value;
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        setState(() {
                                          contentText =
                                              "Sorry, please enter your number!";
                                        });
                                        return "";
                                      } else if (value.length != 11) {
                                        setState(() {
                                          contentText =
                                              "Sorry, this number isn’t registered before!";
                                        });
                                        return "";
                                      } else {
                                        return null;
                                      }
                                    },
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      hintText: " Mobile Number",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFFBDBDBD),
                                      ),
                                      prefixIcon: Icon(
                                        NabdaIcons.phone,
                                        size: 15,
                                        color: Color(0xFFBDBDBD),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: Color(0xFFF1F1F1)),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: Color(0xFFF1F1F1)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide: BorderSide(
                                            color: Color(0xFFF1F1F1)),
                                      ),
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Color(0xFFF1F1F1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                              SizedBox(
                                height: 48,
                                width: 208,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      _saveForm();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EnterCode()),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          behavior: SnackBarBehavior.floating,
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
                                                width: 0.5,
                                                color: Colors.red,
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 15),
                                                Icon(Icons.cancel,
                                                    color: Colors.white,
                                                    size: 30),
                                                TextButton(
                                                  onPressed: () {},
                                                  child: Text("$contentText",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: Text("Send",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white)),
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF6E78F7),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
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
            ),
          ],
        ),
      ),
    );
  }
}
