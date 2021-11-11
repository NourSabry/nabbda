import 'package:flutter/material.dart';

class MedicationContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 110,
      padding: EdgeInsets.only(top: 15, left: 20, right: 15),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Medicine",
                    style: TextStyle(
                        color: Color(0xFF707070),
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
                TextField(
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF707070)),
                  decoration: InputDecoration(
                      hintText: "Write the medicine name",
                      hintStyle:
                      TextStyle(fontSize: 16, color: Color(0xFFA8A8A8)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Icon(Icons.add_circle,
                size: size.height * 0.04, color: Color(0xFF6E78F7)),
          ),
        ],
      ),
    );
  }
}