import 'package:flutter/material.dart';

class NabbdaButton extends StatelessWidget {
  final Function()? function;
  final String? Name;

  NabbdaButton({this.function, this.Name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        Name!,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(208, 48),
          primary: Color(0xFF6E78F7),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0))),
    );
  }
}
