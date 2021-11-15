import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabbda/NavigationBarScreens/HomeScreen/HomeScreens/MedicalDocuments/MedicalDocumentScreens/MedicalAnalysisScreens/MedicalAnalysis1.dart';
import 'package:nabbda/components/BackgroundContainer.dart';
import 'package:nabbda/components/PurpleContainer.dart';
import 'package:nabbda/components/myAppBar.dart';

class UploadMedicalAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
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
              widget: Center(
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
