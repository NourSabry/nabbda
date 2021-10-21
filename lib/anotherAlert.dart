import 'package:flutter/material.dart';

class AlertWithButtons extends StatefulWidget {
  AlertWithButtonsWidget createState() => AlertWithButtonsWidget();
}

class AlertWithButtonsWidget extends State {
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog Title Text.'),
          content: Text("Are You Sure Want To Proceed ?"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("NO"),
              onPressed: () {
                //Put your code here which you want to execute on No button click.
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: Text("CANCEL"),
              onPressed: () {
                //Put your code here which you want to execute on Cancel button click.
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => showAlert(context),
          child: Text('Click Here To Show Alert Dialog Box'),
          // textColor: Colors.white,
          //  color: Colors.purple,
          //  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        ),
      ),
    );
  }
}
