import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  List<Map<String, dynamic>> dateday = [
    {'date': "12", 'day': "Mon"},
    {'date': "13", 'day': "Tue"},
    {'date': "14", 'day': "Wed"},
    {'date': "15", 'day': "Thu"},
    {'date': "16", 'day': "Fri"},
  ];
  List<Map<String, dynamic>> image = [
    {
      'time2': "12:00 PM",
      'image': "assets/image/Dr.Zim.png",
      'time': "12:30 PM",
      'name': "Dr.Zim Akhter",
      'name2': "Cardiologist",
      'color': Color(0xff1C6BA4),
    },
    {
      'time2': "11:00 PM",
      'image': "assets/image/Dr. Shahin Alam.png",
      'time': "11:30 AM",
      'name': "Dr.Shahin Alam",
      'name2': "Cardiologist",
      'color': Color(0xffF1E6EA),
    },
    {
      'time2': "10:00 PM",
      'image': "assets/image/Dr. Mim Akhter.png",
      'time': "10:30 PM",
      'name': "Dr.Mim Akhter",
      'name2': "Cardiologist",
      'color': Color(0xffFAF0DB),
    },
  ];

  int selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Schedule",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Icon(Icons.event, color: Colors.black45, size: 25),
            ],
          ),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: List.generate(dateday.length, (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectindex = index;
                  });
                },
                child: Container(
                  height: 84,
                  width: 70,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: selectindex == index
                          ? Color(0xff1C6BA4)
                          : Color(0xffDCEDF9)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dateday[index]["date"],
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: selectindex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 24),
                        ),
                        SizedBox(height: 7),
                        Text(
                          dateday[index]["day"],
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: selectindex == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 16),
                        )
                      ]),
                ),
              );
            }),
          ),
        ),
        Container(
          width: 365,
          height: 562,
          //color: Colors.black12,
          child: ListView.builder(
            itemCount: 3,
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                  top: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(image[index]["time2"],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                        SizedBox(
                          width: 10,
                        ),
                        DottedLine(
                            dashColor: Colors.grey,
                            dashLength: 5,
                            lineLength: 250,
                            direction: Axis.horizontal,
                            dashGapLength: 3,
                            lineThickness: 1),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 130,
                      width: 330,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: image[index]["color"],
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 7, right: 10, top: 13),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 105,
                                width: 75,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image:
                                            AssetImage(image[index]["image"]))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 28, left: 15, right: 50),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      image[index]["time"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      image[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      image[index]["name2"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white70,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(Icons.more_horiz, color: Colors.white70),
                            ]),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
