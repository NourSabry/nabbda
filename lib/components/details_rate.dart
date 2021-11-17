import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/const_rish_text_rate.dart';
import 'package:nabbda/constants.dart';

class DetailsRate extends StatelessWidget {
  final String? rate;
  final String? typeRate;
  final String? date;
  final String? status;
  final Function()? function;
final Color? colors;
  DetailsRate({this.function, this.status, this.date, this.rate,this.colors,this.typeRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: K.WhiteColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      color: colors,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ConstRichTextRate(
                        leftText: typeRate,
                        rightText: rate,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: function,
                    icon: Icon(
                      Icons.clear,
                      color: K.mainColor,
                    ))
              ],
            ),
            Row(
              children: [
                AutoSizeText(date!,style: TextStyle(fontSize: 14,color: Color(0xFF3B3C55)),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ConstRichTextRate(
                    leftText: "Status: ",
                    rightText: status,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
