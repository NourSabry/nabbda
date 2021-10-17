import 'package:flutter/material.dart';
import 'package:nabbda/MedicalReports1.dart';

class UploadMedicalReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFF5F5F5),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3B3C55)),
          ),
          title: Text("Medical Reports",
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
            MaterialPageRoute(builder: (context) => MedicalReports1()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
