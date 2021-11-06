import 'package:flutter/material.dart';

class OurSnackBar extends StatefulWidget {
  @override
  _OurSnackBar createState() => _OurSnackBar();
}

class _OurSnackBar extends State<OurSnackBar> {
  String newContent = "";

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      backgroundColor: Colors.white,
      content: Container(
        alignment: Alignment.center,
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFD9544F),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 2,
            color: Colors.red,
            style: BorderStyle.solid,
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 15),
            Icon(Icons.cancel, color: Colors.white, size: 30),
            TextButton(
              onPressed: () {},
              child: Text("$newContent",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
