import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:nabbda/constants.dart';

class AppbarBookingDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
          color: K.mainColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: K.WhiteColor,
                  ),
                ),
                Text(
                  "Select a time slot",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 150,
            child: ExpansionTileCard(
                shadowColor: K.mainColor,
                baseColor: K.mainColor,
                elevation: 0,
                trailing: Icon(
                  Icons.arrow_drop_down,
                  color: K.WhiteColor,
                  size: 20,
                ),
                title: Text(
                  "Giza",
                  style: TextStyle(color: K.WhiteColor, fontSize: 18),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                expandedTextColor: K.mainColor,
                children: <Widget>[]),
          )
        ],
      ),
    );
  }
}
