import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class TextFieldSearch extends StatelessWidget {
  final Function(String)? function;
  final String? hint;

  TextFieldSearch({this.function, this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 35,
        child: TextField(
          onChanged: function,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 5),
            hintText: hint!,
            hintStyle: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w500),
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: K.grayColor.shade200)),
            filled: true,
            fillColor: K.WhiteColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color:K.grayColor.shade200)),
          ),
        ));
  }
}
