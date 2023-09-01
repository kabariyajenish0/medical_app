import 'package:flutter/material.dart';
import 'package:medical_app/screen/Dhanmondi_Dhaka.dart';
import 'package:medical_app/screen/Messages.dart';
import 'package:medical_app/screen/book_now.dart';

class Doctors extends StatefulWidget {
  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  List<Map<String, dynamic>> image = [
    {
      'image': "assets/image/doctor(1).jpg",
      'color': Color(0xff1C6BA4),
    },
    {
      'image': "assets/image/doctor(2).jpg",
      'color': Color(0xff008A5E),
    },
    {
      'image': "assets/image/doctor(3).jpg",
      'color': Color(0xff008A5E),
    },
  ];
  List<Map<String, dynamic>> image2 = [
    {'image': "assets/image/doctor(4).png", 'name': "Dr. Mim Akhter"},
    {'image': "assets/image/doctor(1).jpg", 'name': "Dr.Jon Sina"},
    {'image': "assets/image/doctor(5).jpg", 'name': "Dr.Won Sina"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
          child: Column(children: [
            Row(
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
                SizedBox(width: 90),
                Text(
                  "Doctors",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Serch medical..",
                    hintStyle:
                        TextStyle(fontSize: 14, color: Color(0xff8AA0BC)),
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
            SizedBox(height: 15),
            Column(
              children: [
                Row(
                  children: [
                    Text("Live Doctors",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  height: 91,
                  width: 365,
                  child: ListView.builder(
                    itemCount: 3,
                    physics: NeverScrollableScrollPhysics(),
                    // physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Messages(
                                            image: image[index]["image"],
                                            name: image2[index]["name"],
                                          )));
                            },
                            child: Container(
                              width: 91,
                              height: 91,
                              margin: EdgeInsets.only(right: 24),
                              child: Stack(
                                children: [
                                  Image(
                                    image: AssetImage(image[index]["image"]),
                                    height: 91,
                                    width: 91,
                                  ),
                                  Positioned(
                                    right: -2,
                                    child: CircleAvatar(
                                      minRadius: 10,
                                      backgroundColor: Colors.white,
                                      child: Container(
                                          height: 13,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color: image[index]["color"],
                                              shape: BoxShape.circle)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Doctors",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 14, color: Color(0xff1C6BA4)),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 444,
                      width: 338,
                      //  color: Colors.black12,
                      child: ListView.builder(
                        itemCount: image2.length,
                        padding: EdgeInsets.only(top: 15),
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            BookNow(
                                          image: image2[index]["image"],
                                          name: image2[index]["name"],
                                          // name2: image2[index]["name2"],
                                        ),
                                      ));
                                },
                                child: Container(
                                    height: 115,
                                    width: 335,
                                    margin: EdgeInsets.only(bottom: 30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 115,
                                          width: 104,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      image2[index]["image"]),
                                                  fit: BoxFit.fill)),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              image2[index]["name"],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Cardiologist in apolo h ospital",
                                              style: TextStyle(
                                                  color: Colors.grey.shade600),
                                            ),
                                            SizedBox(height: 12),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star_rounded,
                                                  size: 18,
                                                  color: Color(0xffE09F1F),
                                                ),
                                                SizedBox(width: 6),
                                                Text("4.5",
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.w500)),
                                                SizedBox(width: 5),
                                                Text("(17 review)",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors
                                                            .grey.shade600)),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                        bottom: 5,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Dhanmondi_Dhaka(),
                                ));
                          },
                          child: Container(
                            width: 320,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Color(0xff1C6BA4),
                              borderRadius: BorderRadius.circular(15),
                              // boxShadow: [
                              //   // BoxShadow(
                              //   //     color: Colors.white60s,
                              //   //     blurStyle: BlurStyle.normal,
                              //   //     blurRadius: 100)
                              // ]
                            ),
                            child: Center(
                                child: Text(
                              "Apply",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
