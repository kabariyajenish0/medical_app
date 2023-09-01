import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  DateTime? selctedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 30),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(width: 70),
              Text(
                "Appointment",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black87),
              )
            ],
          ),
        ),
        TableCalendar(
          firstDay: DateTime(2010, 10, 16),
          lastDay: DateTime(2030, 3, 14),
          focusedDay: DateTime.now(),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              selectedDay = selectedDay;
              focusedDay = focusedDay;
            });
          },
          //calendarFormat: CalendarFormat.month,
        )
      ]),
    );
  }
}
