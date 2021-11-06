import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  final Function(String)? function;
  final String? hint;

  TextFieldSearch({this.function, this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 35,
      child: TextField(
        onChanged: function,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          hintText: hint!,
          hintStyle: TextStyle(color: Color(0xFFC7C7C7), fontSize: 11),
          prefixIcon: Icon(
            Icons.search,
            size: 15,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.white)),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
