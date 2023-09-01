import 'package:flutter/material.dart';
//import 'package:medical_app/screen/Dhanmondi_Dhaka.dart';
import 'package:medical_app/screen/doctors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> image = [
    {'image': "assets/image/dr.png"},
    {'image': "assets/image/medicine.png"},
    {'image': "assets/image/Group 54.png"},
    {'image': "assets/image/noun-corona-3399685 1.png"},
  ];
  List<Map<String, dynamic>> DrTime = [
    {
      'date': "12",
      'day': "Tue",
      'time': "09:30 AM",
      'name': "Dr. Mim Akhter",
      'name2': "Depression",
      'color': Color(0xff2373B9),
      'color2': Color(0xff4187C3),
    },
    {
      'date': "13",
      'day': "Mon",
      'time': "10:00 AM",
      'name': "Dr. Kishn A",
      'name2': "Not Experience",
      'color': Color(0xffFAF0DD),
      'color2': Color(0xffE09F1F),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\u{1F44B} Hello!",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "John doe",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image(
                      image: AssetImage("assets/image/john deo.png"),
                      height: 48,
                      width: 48,
                    ),
                    Positioned(
                      right: -2,
                      child: CircleAvatar(
                        minRadius: 8,
                        backgroundColor: Colors.white,
                        child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xff1C6BA4),
                                shape: BoxShape.circle)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Serch medical..",
                  hintStyle: TextStyle(fontSize: 14, color: Color(0xff8AA0BC)),
                  suffixIcon: Icon(Icons.tune, color: Colors.black),
                  fillColor: Color(0xffEEF6FC),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: Color(0xff8AA0BC),
                  )),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 32, left: 35, top: 30, bottom: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Services",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 12),
                Container(
                  height: 41,
                  width: 365,
                  child: ListView.builder(
                    itemCount: image.length,
                    physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Doctors()));
                            },
                            child: Container(
                              height: 41,
                              width: 45,
                              margin: EdgeInsets.only(right: 37),
                              decoration: BoxDecoration(
                                  //     color: Colors.black12,
                                  image: DecorationImage(
                                      image: AssetImage(image[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 169,
            width: 327,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffDCEDF9)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Get the Best \nMedical Service ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 21),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lorem Ipsum is simply dummy \ntext of the printing  ",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade600),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child:
                        Image(image: AssetImage("assets/image/Group 187.png")),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Upcoming Appointments",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 170,
            width: 365,
            //  color: Colors.black12,
            child: ListView.builder(
              itemCount: DrTime.length,
              padding: EdgeInsets.only(left: 15),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 285,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: DrTime[index]["color"],
                          boxShadow: [
                            BoxShadow(color: Colors.black54, blurRadius: 4)
                          ],
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 13, right: 10, top: 13),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 105,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     blurRadius: 5,
                                  //   )
                                  // ],
                                  color: DrTime[index]["color2"],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Column(
                                    children: [
                                      Text(
                                        DrTime[index]["date"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 24),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        DrTime[index]["day"],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, bottom: 28, left: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      DrTime[index]["time"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      DrTime[index]["name"],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      DrTime[index]["name2"],
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
                );
              },
            ),
          ),
          // Spinner(
          //   containerCount: 10,
          //   containerSize: 80,
          //   animationSpeed: 5,
          //   duration: Duration(seconds: 5),
          // ),
        ]),
      ),
    );
  }
}
