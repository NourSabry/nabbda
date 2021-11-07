import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/components/ListTile.dart';
import 'package:nabbda/icons/MyIcon.dart';

class SetTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40, top: 160),
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: 80,
          height: 320,
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
                    child: Text("Select Time",
                        style: TextStyle(
                            color: Color(0xFF6E78F7),
                            fontWeight: FontWeight.bold,
                            fontSize: 25))),
              ]),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Column(children: [
                    OurlistTile(tileName: "09"),
                    ListTile(
                      onTap: () {},
                      contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      title: Text("10 : 30   AM",
                          style: TextStyle(
                              color: Color(0xFF6E78F7),
                              fontSize: 21,
                              fontWeight: FontWeight.bold)),
                      trailing: Icon(nabbdaIcons.navigate,
                          color: Color(0xFF6E78F7), size: 40),
                    ),
                    OurlistTile(tileName: "11"),
                    OurlistTile(tileName: "12"),
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
