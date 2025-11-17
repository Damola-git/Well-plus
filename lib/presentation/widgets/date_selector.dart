import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateSelector extends StatefulWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateSelected;

  const DateSelector({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TableCalendar(
          focusedDay: widget.selectedDate,
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          calendarFormat: _calendarFormat,
          onFormatChanged: (format) {
            setState(() {
              _calendarFormat = format;
            });
          },
          selectedDayPredicate: (day) => isSameDay(widget.selectedDate, day),
          onDaySelected: (selectedDay, _) => widget.onDateSelected(selectedDay),
          availableCalendarFormats: const {
            CalendarFormat.month: 'Month',
            CalendarFormat.week: 'Week',
          },

          
          daysOfWeekVisible: true,

          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Colors.blue.shade100,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              
            ),
            selectedTextStyle: const TextStyle(color: Colors.white),
            todayTextStyle: const TextStyle(color: Colors.black),
          ),
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
        ),

        // 👇 Add this bar at the bottom to show it's pullable
        Container(
          margin: const EdgeInsets.only(top: 4, bottom: 8),
          height: 4,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ],
    );
  }
}
