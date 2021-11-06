import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';

class OurCustomTimer extends StatefulWidget {
  const OurCustomTimer({Key? key}) : super(key: key);

  @override
  _OurCustomTimer createState() => _OurCustomTimer();
}

class _OurCustomTimer extends State<OurCustomTimer> {
  var code;
  var mobilePhone;
  String newContent = "";
  final CustomTimerController _controller = new CustomTimerController();

  @override
  Widget build(BuildContext context) {
    return CustomTimer(
      controller: _controller,
      from: Duration(seconds: 34),
      to: Duration(minutes: 0),
      interval: Duration(seconds: 1),
      builder: (CustomTimerRemainingTime remaining) {
        return Text(
          "${remaining.minutes}:${remaining.seconds}",
          style: TextStyle(fontSize: 12, color: Color(0xFFD9544F)),
        );
      },
    );
  }
}
