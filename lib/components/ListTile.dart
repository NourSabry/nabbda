import 'package:flutter/material.dart';

class OurlistTile extends StatelessWidget {
  final String? tileName;
  final Icon? trail;
  final Function()? function;

  OurlistTile({this.tileName, this.trail, this.function});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 10, top: 10),
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      title: Text(tileName!,
          style: TextStyle(
              color: Color(0xFF707070),
              fontWeight: FontWeight.w600,
              fontSize: 14)),
      onTap: function,
      trailing: trail,
    );
  }
}
