import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/colors.dart';

class CardOfReminder extends StatelessWidget {
  final String? label;
  final String? time;
  final Color? color;

  CardOfReminder({this.label, this.time,this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    label!,
                    style:
                        TextStyle(color: CustomizedColors.txtF, fontSize: 18),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Icon(
                      Icons.date_range,
                      color: Colors.white,
                    ),
                    AutoSizeText(
                      time!,
                      style:
                          TextStyle(color: CustomizedColors.txtF, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Text(
                "Get It",
                style: TextStyle(
                    color: CustomizedColors.txtF,
                    fontSize: 16,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
