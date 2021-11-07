import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class ImageProfile extends StatelessWidget {
  final String? image;

  ImageProfile({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(shape: BoxShape.circle, color: K.WhiteColor),
      child: Image.asset(
        image!,
        fit: BoxFit.cover,
      ),
    );
  }
}
