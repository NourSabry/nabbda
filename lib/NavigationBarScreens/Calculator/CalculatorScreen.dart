import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nabbda/NavigationBarScreens/Calculator/BMI/bmi_screen.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/card_calculator_screen.dart';

class CalculatorScreen extends StatelessWidget {
  final List<String> label = [
    "Body Mass\nIndex (BMI)",
    "Diabetes Risk",
    "Calories\nCalculator (BMR)",
    "Heart Risk",
    "Atherosclerosis\nRisk ",
    "Stroke Risk",
    "ASCVD Risk ",
    "qxmd calculator"
  ];
  final List<String> images = [
    "assets/images/calc1.svg",
    "assets/images/calc2.svg",
    "assets/images/calc3.svg",
    "assets/images/heart1.svg",
    "assets/images/arteries.svg",
    "assets/images/Stroke.svg",
    "assets/images/ASCVD.svg",
    "assets/images/qxmd.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Calculator",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: label.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1.25,
                ),
                itemBuilder: (ctx, index) => CardCalculatorScreen(
                  label: label[index],
                  image: images[index],
                  function: () {
                    if (index == 0) {
                      Get.to(() => BMIScreen());
                    } else if (index == 1) {
                    } else if (index == 2) {
                    } else if (index == 3) {
                    } else if (index == 4) {
                    } else if (index == 5) {
                    } else if (index == 6) {
                    } else if (index == 7) {}
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import 'package:nabbda/NavigationBarScreens/Calculator/ASCVDRisk/ASCVDRisk.dart';
// import 'package:nabbda/NavigationBarScreens/Calculator/AtherosclerosisRisk/AtherosclerosisRisk.dart';
// import 'package:nabbda/NavigationBarScreens/Calculator/BMI/bmi_screen.dart';
// import 'package:nabbda/NavigationBarScreens/Calculator/HeartRisk/HeartRisk.dart';
// import 'package:nabbda/NavigationBarScreens/Calculator/StrokeRisk/StrokeRisk.dart';
// import 'package:nabbda/colors.dart';
//
// class CalculatorScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xFFF6F6F6),
//       body: Container(
//         color: Colors.white,
//         child: Stack(
//           alignment: Alignment.topCenter,
//           children: [
//             Positioned(
//               left: 0,
//               right: 0,
//               top: 0,
//               bottom: 500,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xFF6E78F7),
//                   borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(15),
//                       bottomRight: Radius.circular(15)),
//                 ),
//               ),
//             ),
//             Positioned(
//                 left: 30,
//                 right: 30,
//                 top: 60,
//                 bottom: 480,
//                 child: Text("Calculator",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 22,
//                     ))),
//             SingleChildScrollView(
//               child: SafeArea(
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                       left: size.width * 0.07,
//                       right: size.width * 0.07,
//                       top: 120,
//                       bottom: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: (context) {
//                                   return BMIScreen();
//                                 }));
//                               },
//                               child: Container(
//                                 height: 170,
//                                 padding: EdgeInsets.only(left: 15),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20.0),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.1),
//                                       spreadRadius: 5,
//                                       blurRadius: 7,
//                                       offset: Offset(
//                                           0, 3), // changes position of shadow
//                                     ),
//                                   ],
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/calc1.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 15),
//                                     Text("Body Mass\nIndex (BMI)",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 25),
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: () {},
//                               child: Container(
//                                 height: 170,
//                                 padding: EdgeInsets.only(left: 15),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20.0),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.1),
//                                       spreadRadius: 5,
//                                       blurRadius: 7,
//                                       offset: Offset(
//                                           0, 3), // changes position of shadow
//                                     ),
//                                   ],
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/calc2.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 25),
//                                     Text("Diabetes Risk",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.03),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(height: 20),
//                                   SvgPicture.asset(
//                                     "assets/images/calc3.svg",
//                                     height: size.height * 0.045,
//                                   ),
//                                   SizedBox(height: 15),
//                                   Text("Calories\nCalculator (BMR)",
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w600,
//                                           color: CustomizedColors.bck,
//                                           height: 1.3)),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 25),
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => HeartRisk()),
//                                   );
//                                 },
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/heart1.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 15),
//                                     Text("Heart Risk",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.03),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             AtherosclerosisRisk()),
//                                   );
//                                 },
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/arteries.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 15),
//                                     Text("Atherosclerosis\Risk ",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 25),
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => StrokeRisk()),
//                                   );
//                                 },
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/Stroke.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 15),
//                                     Text("Stroke Risk",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: size.height * 0.03),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => ASCVDRisk()),
//                                   );
//                                 },
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     SizedBox(height: 20),
//                                     SvgPicture.asset(
//                                       "assets/images/ASCVD.svg",
//                                       height: size.height * 0.045,
//                                     ),
//                                     SizedBox(height: 15),
//                                     Text("ASCVD Risk ",
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w600,
//                                             color: CustomizedColors.bck,
//                                             height: 1.3)),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 25),
//                           Expanded(
//                             child: Container(
//                               height: 170,
//                               padding: EdgeInsets.only(left: 15),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(20.0),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.1),
//                                     spreadRadius: 5,
//                                     blurRadius: 7,
//                                     offset: Offset(
//                                         0, 3), // changes position of shadow
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   SizedBox(height: 20),
//                                   SvgPicture.asset(
//                                     "assets/images/qxmd.svg",
//                                     height: size.height * 0.045,
//                                   ),
//                                   SizedBox(height: 15),
//                                   Text("qxmd calculator",
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w600,
//                                           color: CustomizedColors.bck,
//                                           height: 1.3)),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
