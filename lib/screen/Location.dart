import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key, this.image});

  final image;

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 365,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/Location.png"),
                fit: BoxFit.fitHeight)),
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(children: [
            Container(
                height: 126,
                width: 335,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Container(
                      height: 108,
                      width: 104,
                      margin: EdgeInsets.only(left: 10, right: 19),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Near California",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Virgo Pharma",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            SizedBox(width: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("10.5",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(width: 5),
                                Text("Km",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600)),
                              ],
                            ),
                            SizedBox(width: 7),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                              ),
                              child: Icon(
                                Icons.access_time,
                                size: 18,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            SizedBox(width: 6),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("30",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(width: 5),
                                Text("Min",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
