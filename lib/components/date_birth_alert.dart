import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateOfBirth extends StatelessWidget {
  final Function(DateTime, DateTime)? function;

  DateOfBirth({this.function});

  @override
  Widget build(BuildContext context) {
    CalendarFormat format = CalendarFormat.month;
    DateTime selectedDay = DateTime.now();
    DateTime focusedDay = DateTime.now();

    return Container(
        width: 600,
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
                format = _format;
              },
              rowHeight: 30,
              daysOfWeekHeight: 25,
              startingDayOfWeek: StartingDayOfWeek.saturday,
              daysOfWeekVisible: true,
              onDaySelected: function,
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
                  selectedTextStyle: TextStyle(color: Colors.white),
                  defaultDecoration: BoxDecoration(shape: BoxShape.circle),
                  weekendTextStyle: TextStyle(
                      color: Color(0xFF3B3C55),
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              onHeaderTapped: (dateTime) => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Container(),
              ),

              headerStyle: HeaderStyle(
                  headerMargin: EdgeInsets.only(right: 70, left: 15),
                  formatButtonVisible: false,
                  titleCentered: false,
                  formatButtonShowsNext: false,
                  leftChevronVisible: false,
                  rightChevronIcon:
                      Icon(Icons.chevron_right, color: Color(0xFF6E78F7)),
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
        ]));
  }
}
