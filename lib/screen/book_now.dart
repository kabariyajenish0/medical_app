import 'package:flutter/material.dart';
import 'package:medical_app/screen/Payment_Method.dart';
import 'package:medical_app/screen/appointment.dart';

class BookNow extends StatefulWidget {
  const BookNow({
    super.key,
    this.image,
    this.name,
  });

  final image;
  final name;
//  final name2;

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black87),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text(
                        "/Ap.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fill)),
          ),
          SizedBox(height: 60),
          Text(
            "Cardiologist in apolo hospital",
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star_sharp,
                size: 18,
                color: Color(0xffE09F1F),
              ),
              SizedBox(width: 6),
              Text("4.5",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              SizedBox(width: 5),
              Text("(17 review)",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade600)),
            ],
          ),
          SizedBox(height: 15),
          Text(
            widget.name,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Container(
            height: 165,
            width: 319,
            decoration: BoxDecoration(
              color: Color(0xffD7DEEA),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 90,
            width: 365,
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Row(children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0XFFDCEDF9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Icon(Icons.access_time_filled,
                    color: Color(0xff1C6BA4), size: 30),
              ),
              SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Schedule",
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                  SizedBox(height: 8),
                  Text("6 AM - 9 AM",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Appointment()));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff1C6BA4),
                  ))
            ]),
          ),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PaymentMethod()));
            },
            child: Container(
              height: 56,
              width: 333,
              decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(14)),
              child: Center(
                child: Text("Book Now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
