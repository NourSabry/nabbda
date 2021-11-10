import 'package:flutter/material.dart';

class TwoButtoninRow extends StatelessWidget {
  final String? Button1;
  final String? Button2;
  final Function()? function1;
  final Function()? function2;

  TwoButtoninRow({this.Button1, this.Button2, this.function1, this.function2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: function1,
            child: Text(
              Button1!,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(145, 48),
              side: BorderSide(width: 1, color: Color(0xFF6E78F7)),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
              primary: Color(0xFF6E78F7),
              elevation: 0.0,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
            child: ElevatedButton(
          onPressed: function2,
          child: Text(
            Button2!,
            style: TextStyle(color: Color(0xFF6E78F7), fontSize: 15),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(145, 48),
            side: BorderSide(width: 1, color: Color(0xFF6E78F7)),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
            primary: Colors.white,
            elevation: 0.0,
          ),
        )),
      ],
    );
  }
}
