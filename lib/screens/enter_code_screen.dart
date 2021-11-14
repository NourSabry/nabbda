import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/textfield.dart';
import 'package:nabbda/constants.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:nabbda/controller/enter_code_controller.dart';

class EnterCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(EnterCodeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Back",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                color: K.WhiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: SvgPicture.asset("assets/images/code.svg"),
                    ),
                    Text("Enter Code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D2D2D),
                            fontSize: 22)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          "Please enter the code sent to your mobile number",
                          style: TextStyle(
                              color: Color(0xFF9E9E9E), fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: TextFieldInput(
                        function: (c) {
                          if (c.length < 10) {
                            Get.snackbar("",
                                "Sorry, this number isn’t registered before!",
                                colorText: K.WhiteColor,
                                duration: Duration(seconds: 1),
                                backgroundColor: Color(0xFFEC4B3E),
                                icon: Icon(
                                  Icons.clear,
                                  color: K.WhiteColor,
                                ),
                                snackPosition: SnackPosition.BOTTOM);
                          } else {
                            Get.snackbar("",
                                "Code successfully send, please check your phone",
                                colorText: K.WhiteColor,
                                duration: Duration(seconds: 1),
                                backgroundColor: Color(0xFF2EC38B),
                                icon: Icon(
                                  Icons.check,
                                  color: K.WhiteColor,
                                ),
                                snackPosition: SnackPosition.BOTTOM);
                          }
                        },
                        hint: "Enter code",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "     Code expires in :",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD), fontSize: 12),
                          ),
                          CustomTimer(
                            controller: _controller.controller,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: RegisterButton(
                        function: () {
                          _controller.startTimer();
                        },
                        label: "Send",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:nabbda/ForgetPasswordsScreens/new_password_screen.dart';
// import 'package:custom_timer/custom_timer.dart';
// import 'package:nabbda/icons/MyIcon.dart';
//
// class EnterCode extends StatefulWidget {
//   const EnterCode({Key? key}) : super(key: key);
//
//   @override
//   _EnterCodeState createState() => _EnterCodeState();
// }
//
// class _EnterCodeState extends State<EnterCode> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   var code;
//   var mobilePhone;
//   String newContent = "";
//
//   final CustomTimerController _controller = new CustomTimerController();
//
//   void _saveForm() {
//     _formKey.currentState!.save();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF6E78F7),
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white,
//           ),
//         ),
//         title: Text("Back",
//             style: TextStyle(
//               color: Colors.white,
//             )),
//       ),
//       body: Container(
//         color: Colors.white,
//         child: Stack(
//           alignment: Alignment.topCenter,
//           children: [
//             Positioned(
//               left: 0,
//               right: 0,
//               top: 0,
//               bottom: 450,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xFF6E78F7),
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(20),
//                       bottomRight: Radius.circular(20)),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 15,
//               right: 15,
//               top: 20,
//               bottom: 20,
//               child: SingleChildScrollView(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Color(0xFF6E78F7),
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(30),
//                         bottomRight: Radius.circular(30)),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Form(
//                       key: _formKey,
//                       child: SingleChildScrollView(
//                         child: Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               SizedBox(height: 40),
//                               SvgPicture.asset("assets/images/code.svg"),
//                               SizedBox(height: 30),
//                               Text("Enter Code",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       color: Color(0xFF2D2D2D),
//                                       fontSize: 22)),
//                               SizedBox(
//                                 height: 5.0,
//                               ),
//                               Text(
//                                   "Please enter the code sent to your mobile number",
//                                   style: TextStyle(
//                                       color: Color(0xFF9E9E9E), fontSize: 14)),
//                               SizedBox(
//                                 height: 30.0,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 30.0),
//                                 child: Container(
//                                   width: 325,
//                                   child: TextFormField(
//                                     onSaved: (value) {
//                                       code = value;
//                                     },
//                                     validator: (value) {
//                                       if (value == null || value.isEmpty) {
//                                         setState(() {
//                                           newContent =
//                                               "Code successfully send, please check your phone!";
//                                         });
//                                         return "";
//                                       } else if (value.length != 4) {
//                                         setState(() {
//                                           newContent =
//                                               "Wrong code! Enter the right one now";
//                                         });
//                                         return "";
//                                       } else {
//                                         return null;
//                                       }
//                                     },
//                                     autofocus: true,
//                                     decoration: InputDecoration(
//                                       prefixIcon: Icon(
//                                         nabbdaIcons.phone,
//                                         size: 15,
//                                         color: Color(0xFFBDBDBD),
//                                       ),
//                                       contentPadding:
//                                           EdgeInsets.symmetric(horizontal: 20),
//                                       hintText: "Enter code",
//                                       hintStyle: TextStyle(
//                                           fontSize: 14,
//                                           color: Color(0xFFBDBDBD)),
//                                       focusedBorder: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                         borderSide: BorderSide(
//                                             color: Color(0xFFF1F1F1)),
//                                       ),
//                                       focusedErrorBorder: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                         borderSide: BorderSide(
//                                             color: Color(0xFFF1F1F1)),
//                                       ),
//                                       enabledBorder: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                         borderSide: BorderSide(
//                                             color: Color(0xFFF1F1F1)),
//                                       ),
//                                       border: InputBorder.none,
//                                       filled: true,
//                                       fillColor: Color(0xFFF1F1F1),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 30.0),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "     Code expires in :",
//                                       style: TextStyle(
//                                           color: Color(0xFFBDBDBD),
//                                           fontSize: 12),
//                                     ),
//                                     CustomTimer(
//                                       controller: _controller,
//                                       from: Duration(seconds: 34),
//                                       to: Duration(minutes: 0),
//                                       interval: Duration(seconds: 1),
//                                       builder:
//                                           (CustomTimerRemainingTime remaining) {
//                                         return Text(
//                                           "${remaining.minutes}:${remaining.seconds}",
//                                           style: TextStyle(
//                                               fontSize: 12,
//                                               color: Color(0xFFD9544F)),
//                                         );
//                                       },
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               SizedBox(
//                                 height: 48,
//                                 width: 208,
//                                 child: TextButton(
//                                   onPressed: () {
//                                     _controller.start();
//                                     if (_formKey.currentState!.validate()) {
//                                       _saveForm();
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) =>
//                                                 NewPassword()),
//                                       );
//                                     } else {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(
//                                         SnackBar(
//                                             backgroundColor: Colors.white,
//                                             content: Container(
//                                                 alignment: Alignment.center,
//                                                 width: 200,
//                                                 height: 50,
//                                                 decoration: BoxDecoration(
//                                                   color: Color(0xFFD9544F),
//                                                   borderRadius:
//                                                       BorderRadius.circular(
//                                                           15.0),
//                                                   border: Border.all(
//                                                     width: 2,
//                                                     color: Colors.red,
//                                                     style: BorderStyle.solid,
//                                                   ),
//                                                 ),
//                                                 child: Row(children: [
//                                                   SizedBox(width: 15),
//                                                   Icon(Icons.cancel,
//                                                       color: Colors.white,
//                                                       size: 30),
//                                                   TextButton(
//                                                     onPressed: () {},
//                                                     child: Text("$newContent",
//                                                         style: TextStyle(
//                                                             color: Colors.white,
//                                                             fontSize: 12,
//                                                             fontWeight:
//                                                                 FontWeight
//                                                                     .bold)),
//                                                   ),
//                                                 ]))),
//                                       );
//                                     }
//                                   },
//                                   child: Text(
//                                     "Send",
//                                     style: TextStyle(
//                                         color: Colors.white, fontSize: 16),
//                                   ),
//                                   style: TextButton.styleFrom(
//                                       backgroundColor: Color(0xFF6E78F7),
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                               BorderRadius.circular(10))),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 20.0),
//                                 child: Center(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         "Didn't get the code?",
//                                         style: TextStyle(
//                                             color: Color(0xFFBDBDBD),
//                                             fontSize: 12),
//                                       ),
//                                       Text(
//                                         " Resend code",
//                                         style: TextStyle(
//                                             color: Color(0xFF6E78F7),
//                                             fontSize: 12,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
