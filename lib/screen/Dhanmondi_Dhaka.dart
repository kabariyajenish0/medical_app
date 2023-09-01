import 'package:flutter/material.dart';
import 'package:medical_app/screen/Location.dart';

class Dhanmondi_Dhaka extends StatefulWidget {
  const Dhanmondi_Dhaka({super.key});

  @override
  State<Dhanmondi_Dhaka> createState() => _Dhanmondi_DhakaState();
}

class _Dhanmondi_DhakaState extends State<Dhanmondi_Dhaka> {
  List<Map<String, dynamic>> image = [
    {
      'image': "assets/image/Rectangle 11.png",
    },
    {
      'image': "assets/image/Rectangle 11 (1).png",
    },
    {
      'image': "assets/image/Screenshot_4.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, right: 20, bottom: 30),
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
                SizedBox(width: 40),
                Icon(Icons.location_on_outlined, color: Colors.grey.shade600),
                Text(
                  "Dhanmondi, Dhaka",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text("Pharmacy Nearby",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                3,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Location(
                                  image: image[index]["image"],
                                )));
                  },
                  child: Container(
                    height: 200,
                    width: 153,
                    margin: EdgeInsets.only(right: 10, top: 15, bottom: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          height: 92,
                          width: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)),
                              // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(image[index]["image"]),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Virgo Pharma",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "2km away",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.grey.shade700),
                              ),
                              SizedBox(height: 8),
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
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(width: 5),
                                  Text("(17 review)",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Upload Prescription",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          SizedBox(height: 13),
          Text(
            "We will show the pharmacy that got\n                 all the medicine.",
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(height: 30),
          Container(
            height: 168,
            width: 264,
            decoration: BoxDecoration(
                color: Color(0xffE4E9F1),
                borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
                        child: Center(
                            child: Icon(
                          Icons.link,
                          size: 30,
                          color: Color(0xff1C6BA4),
                        )),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Share Link",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 5)
                            ]),
                        child: Center(
                            child: Icon(
                          Icons.upload_outlined,
                          size: 30,
                          color: Color(0xffE09F1F),
                        )),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 56,
            width: 264,
            decoration: BoxDecoration(
                color: Color(0xff1C6BA4),
                borderRadius: BorderRadius.circular(14)),
            child: Center(
              child: Text("Continue",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ]),
      ),
    );
  }
}
