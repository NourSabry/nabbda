import 'package:flutter/material.dart';
import 'package:nabbda/TextStyles/text_styles.dart';

class ButtonShare extends StatelessWidget {
  final Function()? function;
  final String? label;
  final IconData? icon;

  ButtonShare({this.icon, this.function, this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xFFBDBDBD),
            ),
            Text(
              label!,
              style: Style.textStyleListViewText,
            )
          ],
        ),
        onPressed: function,
        style: TextButton.styleFrom(
            backgroundColor: Color(0xFFF6F6F6),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
