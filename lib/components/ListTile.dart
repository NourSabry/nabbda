import 'package:flutter/material.dart';

class ListTileMedications extends StatelessWidget {
  final String? tileName;

  ListTileMedications({this.tileName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.only(bottom: 0, top: 0),
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        title: Text(tileName!,
            style: TextStyle(
                color: Color(0xFFBDBDBD),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        onTap: () {});
  }
}
