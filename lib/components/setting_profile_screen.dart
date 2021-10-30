import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingProfileScreen extends StatelessWidget {
  final String? images;
  final String? label;
  final Function()? function;

  SettingProfileScreen({this.images, this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Column(
        children: [
          ListTile(
            onTap: function,
            leading: SvgPicture.asset(
              images!,
              width: 30,
            ),
            title: Text(
              label!,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF6E78F7),
            ),
          ),
          Divider(
            color: Colors.grey,
            endIndent: 5,
            indent: 5,
          )
        ],
      ),
    );
  }
}
