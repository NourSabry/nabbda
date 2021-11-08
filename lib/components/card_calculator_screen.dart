import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/constants.dart';

class CardCalculatorScreen extends StatelessWidget {
  final Function()? function;
  final String? label;
  final String? image;

  CardCalculatorScreen({this.function, this.label, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Material(
        elevation: 1,
        color: K.WhiteColor,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: AutoSizeText(
                  label!,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
