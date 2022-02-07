import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nabbda/colors.dart';
import 'package:nabbda/components/appbar_with_icon_lable.dart';
import 'package:nabbda/components/button.dart';
import 'package:nabbda/components/container_image_profile.dart';
import 'package:nabbda/components/date_birth_alert.dart';
import 'package:nabbda/components/text_field.dart';
import 'package:nabbda/constants.dart';
import 'package:nabbda/controller/register_controller.dart';
import 'package:nabbda/screens/forget_password_screen.dart';
import 'package:nabbda/screens/login_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    CalendarFormat format = CalendarFormat.month;
    DateTime selectedDay = DateTime.now();
    DateTime focusedDay = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(focusedDay);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppbarWithLabelAndIcon(
              function: () {
                Navigator.pop(context);
              },
              label: "Back",
            ),
            Padding(
              padding: EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Material(
                color: K.WhiteColor,
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Text("Register",
                          style: TextStyle(
                              color: CustomizedColors.blackk,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Welcome to our community",
                            style: TextStyle(
                                color: CustomizedColors.greyy, fontSize: 14)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.defaultDialog(
                            title: "",
                            content: Container(
                                width: 500,
                                height: 300,
                                child: Column(children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: TableCalendar(
                                      focusedDay: DateTime(1992, 3, 30, 0, 0),
                                      firstDay: DateTime(1990),
                                      lastDay: DateTime(2050),
                                      calendarFormat: format,
                                      onFormatChanged:
                                          (CalendarFormat _format) {
                                        format = _format;
                                      },
                                      rowHeight: 30,
                                      daysOfWeekHeight: 25,
                                      startingDayOfWeek:
                                          StartingDayOfWeek.saturday,
                                      daysOfWeekVisible: true,

                                      //Day Changed
                                      onDaySelected: (DateTime selectDay,
                                          DateTime focusDay) {
                                        selectedDay = selectDay;
                                        focusedDay = focusDay;
                                        print(focusedDay);
                                      },
                                      selectedDayPredicate: (DateTime date) {
                                        return isSameDay(selectedDay, date);
                                      },

                                      //To style the Calendar
                                      calendarStyle: CalendarStyle(
                                          markerMargin: EdgeInsets.all(0),
                                          cellMargin: EdgeInsets.all(0),
                                          isTodayHighlighted: false,
                                          outsideDaysVisible: false,
                                          selectedDecoration: BoxDecoration(
                                            color: Color(0xFF6E78F7),
                                            shape: BoxShape.circle,
                                          ),
                                          defaultTextStyle: TextStyle(
                                              color: Color(0xFF3B3C55),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                          selectedTextStyle:
                                              TextStyle(color: Colors.white),
                                          defaultDecoration: BoxDecoration(
                                              shape: BoxShape.circle),
                                          weekendTextStyle: TextStyle(
                                              color: Color(0xFF3B3C55),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16)),
                                      onHeaderTapped: (dateTime) =>
                                          showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            Container(),
                                      ),

                                      headerStyle: HeaderStyle(
                                          headerMargin: EdgeInsets.only(
                                              right: 70, left: 15),
                                          formatButtonVisible: false,
                                          titleCentered: false,
                                          formatButtonShowsNext: false,
                                          leftChevronVisible: false,
                                          rightChevronIcon: Icon(
                                              Icons.chevron_right,
                                              color: Color(0xFF6E78F7)),
                                          titleTextStyle: TextStyle(
                                              color: Color(0xFF6E78F7),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                      daysOfWeekStyle: DaysOfWeekStyle(
                                          weekdayStyle: TextStyle(
                                              color: Color(0xFF7C9CBF),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                          weekendStyle: TextStyle(
                                              color: Color(0xFF7C9CBF),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Divider(
                                    thickness: 4,
                                    height: 4,
                                    color: Color(0xFFBDBDBD),
                                    endIndent: 130,
                                    indent: 130,
                                  )
                                ])),
                          );
                        },
                        child: ImageProfile(
                          image: "assets/images/Male.png",
                        ),
                      ),
                      TextFieldInput(
                        hint: "full name",
                        function: (v) {
                          controller.firstName.value = v;
                        },
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Mobile Number",
                        function: (v) {
                          controller.lastName.value = v;
                        },
                        icon: Icon(
                          Icons.phone,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Gender",
                        function: (v) {},
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        onTap: () {
                          Get.defaultDialog(
                            title: "",
                            content: DateOfBirth(
                              function:
                                  (DateTime selectDay, DateTime focusDay) {
                                selectedDay = selectDay;
                                focusedDay = focusDay;
                                print(focusedDay);
                              },
                            ),
                          );
                        },
                        hint: formattedDate,
                        function: (v) {
                          print(formattedDate);
                        },
                        icon: Icon(
                          Icons.person,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Email",
                        function: (v) {
                          controller.email.value = v;
                        },
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      TextFieldInput(
                        hint: "Password",
                        function: (v) {
                          controller.password.value = v;
                        },
                        icon: Icon(
                          Icons.email,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: RegisterButton(
                          function: () {
                            controller.register();
                            // Get.to(() => ForgetPasswordScreen());
                          },
                          label: "Register",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text.rich(
                          TextSpan(
                              text: "Already have account? ",
                              style: TextStyle(
                                  fontSize: 14, color: CustomizedColors.txtFT),
                              children: [
                                TextSpan(
                                    text: "Login",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(() => LoginScreen());
                                      },
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF6E78F7),
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
