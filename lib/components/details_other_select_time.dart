import 'package:flutter/material.dart';
import 'package:nabbda/components/radio_button_row.dart';
import 'package:nabbda/constants.dart';

class DetailsOfOther extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 130,
      width: size.width,
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
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: K.grayColor.shade300)),
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
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(10),
                  border:
                  Border.all(color: K.grayColor.shade300),
                ),
                child: Center(
                    child: Text(
                      "Years",
                      style: TextStyle(color: K.grayColor),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RadioButtonRow(
                label: "male",

              ),
              RadioButtonRow(
                label: "female",
              ),
              RadioButtonRow(
                label: "other",
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child:RichText(
              text: TextSpan(
                text: "By booking this appointment you agree to the",
                style: TextStyle(color: K.grayColor, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                      text: "T&C",
                      style: TextStyle(color: Color(0xFF3CB9C7))),
                ],
              ),
            ),
          )
        ],
      ),
    )

    ;
  }
}