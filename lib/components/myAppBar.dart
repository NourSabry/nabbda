import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? Title;
  final IconButton? myIcon;

  myAppBar({this.Title, this.myIcon});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF6E78F7),
      elevation: 0,
      title: Text(
        Title!,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      leading: myIcon!,
    );
  }
}
