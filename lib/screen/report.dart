import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  List<Map<String, dynamic>> image = [
    {
      'image': "assets/image/report (2).png",
      'name': "Blood Group",
      'name2': "A",
      'name3': "+",
      'name4': "",
      'color': Color(0xffF5E1E9),
    },
    {
      'image': "assets/image/report (3).png",
      'name': "Weight",
      'name2': "80",
      'name3': "",
      'name4': "kg",
      'color': Color(0xffFAF0DB),
    },
  ];

  List<Map<String, dynamic>> lattest = [
    {
      'general': "General Health",
      'file': "8 files",
      'image': "assets/image/report (4).png",
    },
    {
      'general': "General Health",
      'file': "8 files",
      'image': "assets/image/report (5).png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Report",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Icon(Icons.more_horiz, color: Colors.grey),
            ]),
            SizedBox(height: 30),
            Container(
              height: 175,
              width: 335,
              decoration: BoxDecoration(
                  color: Color(0xffDCEDF9),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image(
                    image: AssetImage("assets/image/report (1).png"),
                    height: 116,
                    width: 147,
                  ),
                )
              ]),
            ),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              //  padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(image.length, (index) {
                  return Container(
                    height: 135,
                    width: 155,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: image[index]["color"],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, top: 10, left: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Image(
                                      image: AssetImage(image[index]["image"]),
                                      height: 22,
                                      width: 22),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                )
                              ]),
                          Text(image[index]["name"]),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                image[index]["name2"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 35),
                              ),
                              Text(
                                image[index]["name3"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 30),
                              ),
                              Text(
                                image[index]["name4"],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Lattest Report",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              //  padding: EdgeInsets.only(left: 20),
              child: Column(
                children: List.generate(image.length, (index) {
                  return Container(
                    width: 335,
                    height: 120,
                    //   color: Colors.black12,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(lattest[index]["image"]),
                              width: 35,
                              height: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, bottom: 35, top: 35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    lattest[index]["general"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    lattest[index]["file"],
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
