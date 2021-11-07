import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/TextStyles/text_styles.dart';
import 'package:nabbda/constants.dart';

class BoardingModel {
  final String? label;
  final String? image;

  BoardingModel({this.label, this.image});
}

Widget pageViewScreen(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(model.image!),
        SizedBox(
          height: 50,
        ),
        Text(
          model.label!,
          style: Style.textStyleOnBoardingScreen,
          textAlign: TextAlign.center,
        ),
      ],
    );
