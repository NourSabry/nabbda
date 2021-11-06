import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDoctor extends StatefulWidget {
  @override
  _CalendarDoctor createState() => _CalendarDoctor();
}

class _CalendarDoctor extends State<CalendarDoctor> {
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
    return Scaffold(
      body: TableCalendar(
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
        daysOfWeekHeight: 0,
        startingDayOfWeek: StartingDayOfWeek.saturday,
        daysOfWeekVisible: false,
        headerVisible: true,

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
        //       onHeaderTapped: (dateTime) => showDialog<String>(
        //       context: context,
        //   builder: (BuildContext context) => OnTapped(),
        //  ),

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
              fontSize: 16),
        ),
      ),
    );
  }
}
