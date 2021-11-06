import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/ListTile.dart';

class Duration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60, top: 200),
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 80,
          height: 400,
          child: Column(
            children: [
              Column(children: [
                Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Color(0xFF6E78F7)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Text("Duration",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.bold,
                            fontSize: 25))),
              ]),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(children: [
                    ListTileMedications(tileName: "Never"),
                    ListTileMedications(tileName: "2 Days"),
                    ListTileMedications(tileName: "Week"),
                    ListTileMedications(tileName: "2 Weeks"),
                    ListTileMedications(tileName: "Month"),
                    ListTileMedications(tileName: "Year"),
                  ])),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Save", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(110, 38),
                  primary: Color(0xFF6E78F7),
                  elevation: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
