import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class TextFieldBooking extends StatelessWidget {
  final String? hint;
  final Function(String)? function;

  TextFieldBooking({this.function, this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          onChanged: function,
          decoration: InputDecoration(
            hintText: hint!,
            filled: true,
            fillColor: Color(0xFFF6F6F6),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: K.grayColor.shade400)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: K.grayColor.shade400)),
          ),
        ),
      ),
    );
  }
}
