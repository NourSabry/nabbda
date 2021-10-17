import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/colors.dart';

class MedicalAnalysis3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomizedColors.backk,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomizedColors.btnInAct,
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,
                size: size.width * 0.06, color: CustomizedColors.bck),
          ),
        ),
        title: Text("Medical Analysis",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: CustomizedColors.bck)),
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.04),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/images/docum.svg",
                        height: size.height * 0.05),
                    SizedBox(width: size.width * 0.03),
                    Text("Complete Blood Picture.PDF",
                        style: TextStyle(
                            fontSize: 14, color: CustomizedColors.txtFBo)),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: CustomizedColors.btnInAct)),
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.white,
                    child: Text("X",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: CustomizedColors.btnInAct)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
