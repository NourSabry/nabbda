import 'package:flutter/material.dart';
import 'package:nabbda/MedicalAnalysis1.dart';

class UploadMedicalAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFF5F5F5),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
          ),
          title: Text("Medical Analysis",
              style: TextStyle(color: Color(0xFF3B3C55)))),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 100),
          Text("Upload your file",
              style: TextStyle(
                  color: Color(0xFF707070),
                  fontWeight: FontWeight.w500,
                  fontSize: 18)),
          SizedBox(height: 40),
          Image.asset("assets/images/medical.png"),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0880AE),
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
