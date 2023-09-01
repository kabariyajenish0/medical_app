import 'package:flutter/material.dart';

class ArScannig extends StatefulWidget {
  const ArScannig({super.key});

  @override
  State<ArScannig> createState() => _ArScannigState();
}

class _ArScannigState extends State<ArScannig> {
  List<Map<String, dynamic>> name = [
    {'name': "Face"},
    {'name': "Hair"},
    {'name': "Nose"},
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 800,
            width: 365,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.red,
                    Colors.blue,
                  ],
                ),
                image: DecorationImage(
                    image: AssetImage("assets/image/video call.png"),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 15, bottom: 40),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 30),
                        child: Image(
                            image: AssetImage("assets/image/doted.png"),
                            height: 343,
                            width: 238),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 98,
                        margin: EdgeInsets.only(right: 12, bottom: 30),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Scan",
                          style: TextStyle(
                            color: Color(0xff1C6BA4),
                          ),
                        )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            3,
                            (index) => InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedindex = index;
                                    });
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 88,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      color: selectedindex == index
                                          ? Colors.white
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                        child: Text(
                                      name[index]["name"],
                                      style: TextStyle(
                                        color: selectedindex == index
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    )),
                                  ),
                                )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
