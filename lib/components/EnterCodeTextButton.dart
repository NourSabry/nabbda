import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:nabbda/ForgetPasswordsScreens/NewPassword.dart';

class EnterCodeTextButton extends StatefulWidget {
  @override
  _EnterCodeTextButton createState() => _EnterCodeTextButton();
}

class _EnterCodeTextButton extends State<EnterCodeTextButton> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String newContent = "";
  final CustomTimerController _controller = new CustomTimerController();

  void _saveForm() {
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _controller.start();
        if (_formKey.currentState!.validate()) {
          _saveForm();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewPassword()),
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
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.cancel, color: Colors.white, size: 30),
                    TextButton(
                      onPressed: () {},
                      child: Text("$newContent",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
      child: Text(
        "Send",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      style: TextButton.styleFrom(
          backgroundColor: Color(0xFF6E78F7),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
