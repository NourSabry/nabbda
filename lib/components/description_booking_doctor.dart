import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class DoctorDescription extends StatelessWidget {
  final String? name;
  final String? image;
  final String? description;

  DoctorDescription({this.name, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 70,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(shape: BoxShape.circle, color: K.mainColor),
          child: Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  name!,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF313450),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  description!,
                  maxLines: 4,
                  style: TextStyle(color: Color(0xFF898A8F), fontSize: 12),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
