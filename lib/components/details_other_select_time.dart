import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class DetailsOfOther extends StatelessWidget {
  final Widget? widget;

  DetailsOfOther({this.widget});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: K.WhiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: K.grayColor.shade300)),
                child: Center(
                    child: Text(
                  "Age",
                  style: TextStyle(color: K.grayColor),
                )),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: K.grayColor.shade300),
                ),
                child: Center(
                    child: Text(
                  "Years",
                  style: TextStyle(color: K.grayColor),
                )),
              )
            ],
          ),
          Container(
            height: 50,
            child: widget,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: RichText(
              text: TextSpan(
                text: "By booking this appointment you agree to the",
                style: TextStyle(color: K.grayColor, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                      text: "T&C", style: TextStyle(color: Color(0xFF3CB9C7))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
