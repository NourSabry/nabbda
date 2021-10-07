import 'package:flutter/material.dart';
import 'package:nabbda/Password.dart';
import 'Password.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF3B3C55),
          ),
        ),
        title: Text(
          "Back",
          style: TextStyle(color: Color(0xFF3B3C55)),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "New Password",
                    hintStyle:
                        TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
                    prefixIcon: Icon(
                      Password.password,
                      color: Color(0xFFBDBDBD),
                      size: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF9F9F9),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Confirm new Password",
                    hintStyle:
                        TextStyle(color: Color(0xFFBDBDBD), fontSize: 14),
                    prefixIcon: Icon(
                      Password.password,
                      color: Color(0xFFBDBDBD),
                      size: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFFF9F9F9)),
                    ),
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF9F9F9),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: SizedBox(
                  height: 48,
                  width: 208,
                  child: ElevatedButton(
                    onPressed: () => showDialog<String>(
                        barrierColor: Color(0xFF707070),
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0))),
                              content: Builder(builder: (context) {
                                return Container(
                                    width: 500,
                                    height: 240,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "assets/images/success.jpg"),
                                        SizedBox(height: 8),
                                        Text("Changed successfully!",
                                            style: TextStyle(
                                              color: Color(0xFF34C759),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                          "Password has been changed, return to login and try login again",
                                          style: TextStyle(
                                              color: Color(0xFF9E9E9E),
                                              fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 30),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Go to login",
                                            style: TextStyle(
                                                color: Color(0xFF0880AE),
                                                fontSize: 16),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: Size(242, 54),
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFF0880AE)),
                                            shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      10.0),
                                            ),
                                            primary: Colors.white,
                                            elevation: 0.0,
                                          ),
                                        ),
                                      ],
                                    ));
                              }),
                            )),
                    child: Text(
                      "Change",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0880AE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
