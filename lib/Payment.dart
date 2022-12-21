import 'dart:ui';

import 'package:amaliyotcoffee/buy.dart';
import 'package:amaliyotcoffee/cart.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              // image ni ustiga rang berish
              // colorFilter: new ColorFilter.mode(
              //     Color(0xff907451).withOpacity(1.0), BlendMode.softLight),
              image: AssetImage(
                'assets/image/Rectangle.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.black.withOpacity(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xff67432D),
                                const Color(0xffAB6635).withOpacity(0),
                              ]),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 10),
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (_){
                                  //   return Buy();
                                  // },),);
                                },
                                child: const Icon(
                                    Icons.arrow_circle_left_outlined,
                                    color: Colors.white,
                                    size: 30),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 230, top: 10),
                              child: Icon(Icons.home,
                                  color: Colors.white, size: 30),
                            ),
                          ],
                        )),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Choose Payment  Method",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 30),
                                child: Icon(
                                  Icons.money_outlined,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Total 250 USD",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(
                                        color: const Color(0xff67432D),
                                        width: 0.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.brown,
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                            5.0, // Move to right 5  horizontally
                                            5.0 // Move to bottom 5 Vertically
                                            ),
                                      )
                                    ],
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          const Color(0xffA09C93)
                                              .withOpacity(0.9),
                                          const Color(0xffC5C0BE)
                                              .withOpacity(0.25)
                                        ]),
                                  ),
                                ),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 80, top: 40),
                                    child: Icon(
                                      Icons.radio_button_on_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 40, left: 10),
                                    child: Text(
                                      "Card details",
                                      style: TextStyle(
                                          color: Color(0xff67432D),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 80, left: 60),
                                child: Container(
                                  height: 70,
                                  width: 240,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.white.withOpacity(0.5),
                                          const Color(0xffC5C0BE)
                                              .withOpacity(0.25),
                                        ]),
                                  ),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Text(
                                          "Ahlam Bush      Edit",
                                          style: TextStyle(
                                              color: Color(0xff6A432D),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Text(
                                        "Mastercard****2678",
                                        style: TextStyle(
                                            color: Color(0xff6A432D),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 195, bottom: 3),
                                        child: Icon(
                                          Icons.wallet,
                                          color: Color(0xff6A432D),
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(
                              color: const Color(0xff67432D), width: 0.5),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xffA09C93).withOpacity(0.9),
                                const Color(0xffC5C0BE).withOpacity(0.25),
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, left: 20),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffC3C3C3)
                                          .withOpacity(0.5),
                                      border: Border.all(
                                        color: const Color(0xff6A432D),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    "Bank Transfer",
                                    style: TextStyle(
                                        color: Color(0xff6A432D),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(
                              color: const Color(0xff67432D), width: 0.5),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xffA09C93).withOpacity(0.9),
                                const Color(0xffC5C0BE).withOpacity(0.25),
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, left: 20),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffC3C3C3)
                                          .withOpacity(0.5),
                                      border: Border.all(
                                        color: const Color(0xff6A432D),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: Text(
                                    "Mobile  Money",
                                    style: TextStyle(
                                        color: Color(0xff6A432D),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          border: Border.all(
                              color: const Color(0xff67432D), width: 0.5),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xffA09C93).withOpacity(0.9),
                                const Color(0xffC5C0BE).withOpacity(0.25),
                              ]),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 18, left: 20),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffC3C3C3)
                                          .withOpacity(0.5),
                                      border: Border.all(
                                        color: const Color(0xff6A432D),
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 15, left: 20),
                                  child: Text("Paypal",
                                      style: TextStyle(
                                          color: Color(0xff6A432D),
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) {
                                return const Cart();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 240,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xff6A432D), width: 2),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(32)),
                          ),
                          child: const Center(
                              child: Text(
                            "Confirm Order",
                            style: TextStyle(color: Color(0xff6A432D)),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
