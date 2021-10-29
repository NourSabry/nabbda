import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/colors.dart';

class MedicalReports3Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomizedColors.backk,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF6E78F7),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF6E78F7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 25,
            bottom: 570,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Text("Medical Reports ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
              ],
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 110,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.04),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
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
                                    fontSize: 14,
                                    color: CustomizedColors.txtFBo)),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: CustomizedColors.btnInAct)),
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
            ),
          ),
        ],
      ),
    );
  }
}
