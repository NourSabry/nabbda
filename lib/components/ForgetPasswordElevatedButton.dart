import 'package:flutter/material.dart';
import 'package:nabbda/ForgetPasswordsScreens/EnterCode.dart';

class ForgetPasswordElevatedButton extends StatefulWidget {
  const ForgetPasswordElevatedButton({Key? key}) : super(key: key);

  @override
  _ForgetPasswordElevatedButton createState() =>
      _ForgetPasswordElevatedButton();
}

class _ForgetPasswordElevatedButton
    extends State<ForgetPasswordElevatedButton> {
  String contentText = "";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _saveForm() {
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _saveForm();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EnterCode()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.white,
              content: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFD9544F),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.cancel, color: Colors.white, size: 30),
                    TextButton(
                      onPressed: () {},
                      child: Text("$contentText",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
      child: Text("Send", style: TextStyle(fontSize: 18, color: Colors.white)),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(208, 48),
          primary: Color(0xFF6E78F7),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
