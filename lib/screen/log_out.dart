import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map<String, dynamic>> list = [
    {
      'icon': Icons.settings_outlined,
      'name': "Account Settings",
    },
    {
      'icon': Icons.privacy_tip_outlined,
      'name': "Privacy Policy ",
    },
    {
      'icon': Icons.payment,
      'name': "Payment Settings",
    },
    {
      'icon': Icons.info_outline,
      'name': "Payment Settings",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C6BA4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
            ),
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
                        border: Border.all(color: Colors.white70)),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 230,
            width: 365,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/image/john deo.png"),
                  height: 77,
                  width: 77,
                ),
                SizedBox(height: 15),
                Text(
                  "Shahin Alam",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                ),
                SizedBox(height: 5),
                Text(
                  "Ui Designer",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
              4,
              (index) => Container(
                height: 68,
                width: 325,
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      list[index]["icon"],
                      color: Colors.grey.shade700,
                      size: 22,
                    ),
                    SizedBox(width: 15),
                    Text(
                      list[index]['name'],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                    )
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    color: Colors.grey.shade400,
                    size: 25,
                  )),
              Text(
                "Log Out",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.grey.shade400),
              )
            ],
          ),
        ],
      ),
    );
  }
}
