import 'package:flutter/material.dart';
import 'package:nabbda/ChangePassword.dart';
import 'package:nabbda/Logout.dart';
import 'package:nabbda/changeProfilePicture.dart';
import 'package:nabbda/icons/Calendar.dart';
import 'package:nabbda/icons/Arrow.dart';

class Profile extends StatefulWidget {
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  var val;
  var val2;
  var val3;
  var val4;

  var email;
  var name;
  var mobilePhone;
  var dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          backgroundColor: Color(0xFFF5F5F5),
          elevation: 0,
          title: Text("  Profile",
              style: TextStyle(
                  color: Color(0xFF3B3C55),
                  fontSize: 22,
                  fontWeight: FontWeight.w500))),
      body: Theme(
          data: ThemeData(unselectedWidgetColor: Color(0xFF0880AE)),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                  radius: 40,
                ),
              ),
              Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangeProfilePicture()),
                        );
                      },
                      icon: Icon(Icons.edit, color: Colors.blue[700]))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Your info:",
                        style: TextStyle(
                            color: Color(0xFF0880AE),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFormField(
                            onSaved: (value) {
                              email = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(bottom: 0, top: 0),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFCCCCCC)),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFCCCCCC)),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                hintText: "Info@gmail.com",
                                hintStyle: TextStyle(color: Color(0xFF3B3C55)),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22)),
                          ),
                          TextFormField(
                            onSaved: (value) {
                              name = value;
                            },
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 0, top: 20),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFCCCCCC)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFFCCCCCC)),
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: "Amr",
                              hintStyle: TextStyle(color: Color(0xFF3B3C55)),
                              labelText: "Name",
                              labelStyle: TextStyle(
                                  color: Color(0xFF707070),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22),
                            ),
                          ),
                          TextFormField(
                              onSaved: (value) {
                                mobilePhone = value;
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(bottom: 0, top: 20),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: "Phone Number",
                                  hintStyle:
                                      TextStyle(color: Color(0xFF3B3C55)),
                                  hintText: "01099377839",
                                  labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22))),
                          TextFormField(
                              onSaved: (value) {
                                dateOfBirth = value;
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(bottom: 0, top: 15),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFCCCCCC)),
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: "Date of Birth",
                                  hintStyle:
                                      TextStyle(color: Color(0xFF3B3C55)),
                                  hintText: "12/11/1990",
                                  suffixIcon: Icon(Calendar.calendar,
                                      color: Color(0xFF0880AE)),
                                  labelStyle: TextStyle(
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22))),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            alignment: Alignment.topLeft,
                            child: Text("Choose Gender",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    value: 1,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("Male",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              ),
                              SizedBox(width: 60),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: val,
                                    onChanged: (value) {
                                      setState(() {
                                        val = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("Female",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            alignment: Alignment.topLeft,
                            child: Text("Do you make Cardiac catheterization?",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    value: 1,
                                    groupValue: val4,
                                    onChanged: (value) {
                                      setState(() {
                                        val4 = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("Yes",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              ),
                              SizedBox(width: 60),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: val4,
                                    onChanged: (value) {
                                      setState(() {
                                        val4 = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("No",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            alignment: Alignment.topLeft,
                            child: Text("Do you make Open Heart surgery",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17)),
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                    visualDensity: VisualDensity(
                                        horizontal: 0, vertical: -4),
                                    value: 1,
                                    groupValue: val3,
                                    onChanged: (value) {
                                      setState(() {
                                        val3 = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("Yes",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              ),
                              SizedBox(width: 60),
                              Row(
                                children: [
                                  Radio(
                                    value: 2,
                                    groupValue: val3,
                                    onChanged: (value) {
                                      setState(() {
                                        val3 = value;
                                      });
                                    },
                                    activeColor: Colors.blue[700],
                                  ),
                                  Text("No",
                                      style: TextStyle(
                                          color: Color(0xFF3B3C55),
                                          fontSize: 17))
                                ],
                              )
                            ],
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 0),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()),
                              );
                            },
                            title: Text("Change Password",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500)),
                            trailing: Icon(Arrow.arrow,
                                color: Color(0xFF0880AE), size: 30),
                          ),
                          const Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xFFCCCCCC)),
                          ListTile(
                            contentPadding: EdgeInsets.only(left: 0),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => Logout(),
                            ),
                            title: Text("Logout",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFF707070),
                                    fontWeight: FontWeight.w500)),
                            trailing: Icon(Arrow.arrow,
                                color: Color(0xFF0880AE), size: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "App setting:",
                        style: TextStyle(
                            color: Color(0xFF0880AE),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              alignment: Alignment.topLeft,
                              child: Text("Choose Language",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xFF707070),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17)),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: val2,
                                      onChanged: (value) {
                                        setState(() {
                                          val2 = value;
                                        });
                                      },
                                      activeColor: Colors.blue[700],
                                    ),
                                    Text("English",
                                        style: TextStyle(
                                            color: Color(0xFF3B3C55),
                                            fontSize: 17))
                                  ],
                                ),
                                SizedBox(width: 60),
                                Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: val2,
                                      onChanged: (value) {
                                        setState(() {
                                          val2 = value;
                                        });
                                      },
                                      activeColor: Colors.blue[700],
                                    ),
                                    Text("Arabic",
                                        style: TextStyle(
                                            color: Color(0xFF3B3C55),
                                            fontSize: 17))
                                  ],
                                )
                              ],
                            ),
                          ]),
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "More:",
                        style: TextStyle(
                            color: Color(0xFF0880AE),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                onTap: () {},
                                title: Text("About us",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF707070),
                                        fontWeight: FontWeight.w500)),
                                trailing: Icon(Arrow.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                onTap: () {},
                                title: Text("Terms and conditions ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF707070),
                                        fontWeight: FontWeight.w500)),
                                trailing: Icon(Arrow.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                              Divider(
                                color: Color(0xFFE4E4E4),
                                thickness: 1,
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                onTap: () {},
                                title: Text("Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF707070),
                                        fontWeight: FontWeight.w500)),
                                trailing: Icon(Arrow.arrow,
                                    color: Color(0xFF0880AE), size: 30),
                              ),
                            ])),
                    SizedBox(height: 30)
                  ],
                ),
              )
            ],
          ))),
    );
  }
}
