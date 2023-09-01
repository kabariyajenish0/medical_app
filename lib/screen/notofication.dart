import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Map<String, dynamic>> list = [
    {
      'image': "assets/image/Vector.png",
      'name': "14 Messages",
      'name2': "Check your schedule Today",
      'color': Color(0xffFEE1E6),
    },
    {
      'image': "assets/image/Vector (1).png",
      'name': "3 Schedules!",
      'name2': "Check your schedule Today",
      'color': Color(0xffDCEDF9),
    },
    {
      'image': "assets/image/Vector (2).png",
      'name': "Medicine",
      'name2': "Check your schedule Today",
      'color': Color(0xffFAF0DB),
    },
    {
      'image': "assets/image/Vector (3).png",
      'name': "Vaccine Update",
      'name2': "Check your schedule Today",
      'color': Color(0xffD6F6FF),
    },
    {
      'image': "assets/image/Vector (4).png",
      'name': "App Update",
      'name2': "Check your schedule Today",
      'color': Color(0xffF2E3E9),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Notifications",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Container(
            height: 660,
            width: 365,
            margin: EdgeInsets.zero,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: 365,
                  padding: EdgeInsets.only(left: 15),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Row(children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: list[index]["color"],
                          borderRadius: BorderRadius.circular(22),
                          image: DecorationImage(
                              image: AssetImage(list[index]["image"]))),
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list[index]["name"],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text(list[index]["name2"],
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ],
                    )
                  ]),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
