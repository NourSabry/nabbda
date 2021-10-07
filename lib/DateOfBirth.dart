import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'OnTappedDate.dart';
import 'package:table_calendar/table_calendar.dart';

class DateOfBirth extends StatefulWidget {
  @override
  _DateOfBirth createState() => _DateOfBirth();
}

class _DateOfBirth extends State<DateOfBirth> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          width: double.infinity,
          height: 300,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TableCalendar(
                focusedDay: DateTime(1992, 3, 30, 0, 0),
                firstDay: DateTime(1990),
                lastDay: DateTime(2050),
                calendarFormat: format,
                onFormatChanged: (CalendarFormat _format) {
                  setState(() {
                    format = _format;
                  });
                },
                rowHeight: 30,
                daysOfWeekHeight: 25,
                startingDayOfWeek: StartingDayOfWeek.saturday,
                daysOfWeekVisible: true,

                //Day Changed
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
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
                      color: Color(0xFF0880AE),
                      shape: BoxShape.circle,
                    ),
                    defaultTextStyle: TextStyle(
                        color: Color(0xFF3B3C55),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    selectedTextStyle: TextStyle(color: Colors.white),
                    defaultDecoration: BoxDecoration(shape: BoxShape.circle),
                    weekendTextStyle: TextStyle(
                        color: Color(0xFF3B3C55),
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                onHeaderTapped: (dateTime) => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => OnTapped(),
                ),

                headerStyle: HeaderStyle(
                    headerMargin: EdgeInsets.only(right: 70, left: 15),
                    formatButtonVisible: false,
                    titleCentered: false,
                    formatButtonShowsNext: false,
                    leftChevronVisible: false,
                    rightChevronIcon:
                        Icon(Icons.chevron_right, color: Color(0xFF0880AE)),
                    titleTextStyle: TextStyle(
                        color: Color(0xFF0880AE),
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
  }
}
