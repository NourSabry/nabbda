import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

showAlertDialogSelect(BuildContext context, Function()? functionMyself,
    Function()? functionOtherSelf) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: SizedBox(
            height: 70,
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: functionMyself, child: Text("For Myself")),
                Divider(
                  color: K.grayColor,
                  indent: 5,
                  endIndent: 5,
                ),
                GestureDetector(
                    onTap: functionOtherSelf, child: Text("For Other")),
              ],
            ),
          ),
        );
      });
}
