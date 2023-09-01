import 'package:flutter/material.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
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
              padding: const EdgeInsets.only(top: 45, bottom: 40),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 124,
                        width: 115,
                        margin: EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/image/Dr. Mim Akhter.png"),
                                fit: BoxFit.fill)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Md Shahin Alam",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text("00:30:00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.mic_off_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffF73859),
                            child: Icon(
                              Icons.call_end_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.videocam_outlined,
                                color: Colors.grey.shade700,
                                size: 20,
                              )),
                        ],
                      )
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
