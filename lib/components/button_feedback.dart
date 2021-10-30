import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ButtonFeedback extends StatelessWidget {
  final Function()? giveFeedback;
  final Function()? book;

  ButtonFeedback({this.book, this.giveFeedback});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 50,
      width: size.width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: K.grayColor)),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: giveFeedback,
                child: Text(
                  "Give Feedback",
                  style: TextStyle(color: K.blackColor, fontSize: 18),
                )),
          ),
          Expanded(
            child: TextButton(
              onPressed: book,
              child: Text(
                "Book",
                style: TextStyle(color: K.WhiteColor, fontSize: 18),
              ),
              style: TextButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: K.mainColor),
            ),
          )
        ],
      ),
    );
  }
}
