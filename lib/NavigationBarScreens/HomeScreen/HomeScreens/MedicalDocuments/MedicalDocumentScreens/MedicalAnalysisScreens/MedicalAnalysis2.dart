import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class MedicalAnalysis2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF6E78F7),
        child: Icon(Icons.add, color: Colors.white, size: 30),
      ),
      appBar: myAppBar(
          Title: "Medical Analysis",
          myIcon: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white))),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 550,
            child: PurpleContainer(),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            bottom: 20,
            child: BackgroundContainer(
              widget: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close_rounded,
                                color: Color(0xFF6E78F7))),
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
