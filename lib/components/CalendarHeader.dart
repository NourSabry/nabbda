import 'package:flutter/material.dart';
import 'CalendarDoctor.dart';

class CalendarHeader extends StatefulWidget {
  @override
  _CalendarHeader createState() => _CalendarHeader();
}

class _CalendarHeader extends State<CalendarHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalendarDoctor()));
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded),
            ),
            Text("Tomorrow, 6 Oct",
                style: TextStyle(color: Color(0xFF313450), fontSize: 14)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
