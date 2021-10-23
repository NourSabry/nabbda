import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/MedicalAnalysis1.dart';

class UploadMedicalAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
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
                Text("Medical Analysis ",
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
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Text("Upload your file",
                        style: TextStyle(
                            color: Color(0xFF707070),
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    SizedBox(height: 40),
                    SvgPicture.asset("assets/images/Data.svg"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF6E78F7),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MedicalAnalysis1()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
