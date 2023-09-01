import 'package:flutter/material.dart';
import 'package:medical_app/screen/Schedule.dart';
import 'package:medical_app/screen/home_page.dart';
import 'package:medical_app/screen/notofication.dart';
import 'package:medical_app/screen/report.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({super.key});

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  int selectindex = 0;
  List screen = [
    HomeScreen(),
    Schedule(),
    Report(),
    Notifications(),
  ];
  List icons = [
    Icons.home_filled,
    Icons.event_note,
    Icons.text_snippet,
    Icons.notifications
  ];
  List name = ["Home", "Schedule", "Report", "Notification"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectindex = value;
            });
          },
          currentIndex: selectindex,
          fixedColor: Color(0xff1C6BA4),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedLabelStyle:
              TextStyle(height: 2, fontSize: 12, fontWeight: FontWeight.bold),
          backgroundColor: Colors.white,
          unselectedIconTheme: IconThemeData(color: Colors.black54),
          selectedIconTheme: IconThemeData(color: Color(0xff1C6BA4)),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.event_note), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.text_snippet), label: "Report"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
          ]),
    );
  }
}
