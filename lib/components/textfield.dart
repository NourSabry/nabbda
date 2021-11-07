import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class TextFieldInput extends StatelessWidget {
  final String? hint;
  final Function(String)? function;

  TextFieldInput({this.function, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          onChanged: function,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 30),
            hintText: hint!,
            hintStyle: TextStyle(color: K.grayColor.shade400),
            filled: true,
            fillColor: Color(0xFFF1F1F1),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: K.grayColor.shade100)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: K.grayColor.shade100)),
          ),
        ),
      ),
    );
  }
}
