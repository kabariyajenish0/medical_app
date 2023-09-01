import 'package:flutter/material.dart';
import 'package:medical_app/screen/Dhanmondi_Dhaka.dart';
import 'package:medical_app/screen/Schedule.dart';
import 'package:medical_app/screen/bottomappbar.dart';
import 'package:medical_app/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomAppbar(),
    );
  }
}
