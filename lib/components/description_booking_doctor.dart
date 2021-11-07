import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/container_image_profile.dart';
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
        ImageProfile(
          image: image,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  name!,
                  maxLines: 1,
                  style: TextStyle(fontSize: 17, color: K.blackColor),
                ),
                SizedBox(
                  height: 8,
                ),
                AutoSizeText(
                  description!,
                  maxLines: 4,
                  style: TextStyle(color: K.grayColor, fontSize: 15),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
