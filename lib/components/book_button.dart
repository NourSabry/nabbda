import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class BookButton extends StatelessWidget {
  final Function()? function;

  BookButton({this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 30,
      child: TextButton(
        onPressed: function,
        child: Text(
          "Book",
          style: TextStyle(color: K.mainColor, fontSize: 14),
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: K.mainColor))),
      ),
    );
  }
}
