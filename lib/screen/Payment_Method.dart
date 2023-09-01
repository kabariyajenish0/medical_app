import 'package:flutter/material.dart';
import 'package:medical_app/screen/log_out.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List<Map<String, dynamic>> card = [
    {
      'image': "assets/image/visa.png",
      'image2': "assets/image/paypal.png",
      'name': "Available balance",
      'balance': "\$3,578.99",
      'color': Color(0xff1C6BA4),
    },
    {
      'image': "assets/image/mastcard.png",
      'name': "Available balance",
      'image2': "assets/image/payoneer.png",
      'balance': "\$10,578.99",
      'color': Color(0xffE09F1F),
    },
    {
      'image2': "assets/image/visa(blue).png",
    }
  ];

  int selectedindex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                SizedBox(width: 60),
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black87),
                )
              ],
            ),
          ),
          Container(
            height: 183,
            width: 365,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              controller: PageController(),
              onPageChanged: (value) {
                setState(() {
                  selectedindex = value;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                      height: 183,
                      width: 311,
                      decoration: BoxDecoration(
                          color: card[index]["color"],
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card[index]["name"],
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    card[index]["balance"],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35),
                                  ),
                                ],
                              ),
                              Image(
                                image: AssetImage(card[index]["image"]),
                                height: 30,
                                width: 56,
                              )
                            ]),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              2,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    pageController.animateToPage(index,
                        duration: Duration(seconds: 2),
                        curve: Curves.decelerate);
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedindex == index
                        ? Color(0xff1C6BA4)
                        : Color(0xffBBD3E4),
                    radius: 4.5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text("Select Option",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Container(
                    height: 70,
                    width: 300,
                    child: Row(children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black54,
                            )),
                      ),
                      Container(
                        height: 51,
                        width: 170,
                        //color: Colors.red,
                        child: Image(
                          image: AssetImage(card[index]["image2"]),
                          height: 51,
                          width: 170,
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Profile()));
            },
            child: Container(
              height: 56,
              width: 333,
              decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(14)),
              child: Center(
                child: Text("Continue",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
