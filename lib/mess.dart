import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key, this.image, this.name});

  final image;
  final name;

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 130,
          width: 365,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
          child: Padding(
            padding: const EdgeInsets.only(right: 22, left: 22, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image:
                            DecorationImage(image: AssetImage(widget.image))),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text("Active Now",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                          SizedBox(width: 4),
                          CircleAvatar(
                            radius: 3.5,
                            backgroundColor: Color(0xff27AE60),
                          )
                        ],
                      ),
                    ],
                  ),
                ]),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 34, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 85,
                width: 239,
                margin: EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    color: Color(0xff1C6BA4)),
                child: Center(
                    child: Text(
                  "Hi shah, Can You tell me\nyour problem?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 19, right: 80),
                child: Text("Thu 09:10 AM",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black54,
                    )),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image(
                  image: AssetImage("assets/image/john deo.png"),
                  height: 40,
                  width: 40,
                ),
                Container(
                  height: 85,
                  width: 239,
                  margin: EdgeInsets.only(left: 15, bottom: 31),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                      color: Color(0xffFAF0DB)),
                  child: Center(
                      child: Text(
                    "Sure I am suffering from\nskin allergies.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ]),
              Container(
                height: 85,
                width: 239,
                margin: EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        topLeft: Radius.circular(16)),
                    color: Color(0xff1C6BA4)),
                child: Center(
                    child: Text(
                  "Can You Send a Photo of\nyour skin?",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 24, right: 80),
                child: Text("Thu 09:15 AM",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.black54,
                    )),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Image(
                  image: AssetImage("assets/image/john deo.png"),
                  height: 40,
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 133,
                        margin: EdgeInsets.only(bottom: 19),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                            color: Color(0xffFAF0DB)),
                        child: Center(
                            child: Text(
                          "Yes Here it's",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                      Image(
                        image: AssetImage("assets/image/messege.png"),
                        height: 166,
                        width: 196,
                      )
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
