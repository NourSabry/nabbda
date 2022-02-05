import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingProfileScreen extends StatelessWidget {
  final String? images;
  final String? label;
  final Function()? function;

  SettingProfileScreen({this.images, this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: function,
          leading: SvgPicture.asset(
            images!,
            width: 25,
          ),
          title: Text(
            label!,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF6E78F7),
          ),
        ),
        Divider(
          thickness: 0.3,
          color: Colors.grey,
          endIndent: 6,
          indent: 6,
        )
      ],
    );
  }
}
