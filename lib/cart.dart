import 'dart:ui';

import 'package:amaliyotcoffee/Finish.dart';
import 'package:amaliyotcoffee/Payment.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              // image ni ustiga rang berish
              // colorFilter: new ColorFilter.mode(
              //     Color(0xff67432D).withOpacity(1.0), BlendMode.softLight),
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
                                Color(0xff67432D),
                                Color(0xffAB6635).withOpacity(0),
                              ]),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 10),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_){
                                    return Payment();
                                  },),);
                                },
                                child: Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 90),
                              child: Text(
                                "Cart",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19),
                              ),
                            ),
                          ],
                        )),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Stack(
                          //   children: [
                          //     Container(
                          //       height: 550,
                          //       width: 300,
                          //       decoration: BoxDecoration(
                          //         color: Color(0xff67432D).withOpacity(0.2),
                          //         boxShadow: [
                          //           BoxShadow(
                          //               color: Color(0xff67432D), // Change color of the shadow
                          //               blurRadius: 15.0,
                          //               spreadRadius: 5.0,
                          //               offset: Offset(10.0, 10.0)
                          //           )
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // ),

                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 30),
                                child: Container(
                                  height: 85,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.white.withOpacity(0.6),
                                        Color(0xff333333).withOpacity(0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(24),
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Image(
                                          image: AssetImage(
                                              "assets/image/kisbi2.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 120),
                                    child: Text(
                                      "Peet Coffee braw",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 30),
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 120),
                                child: Text(
                                  "Since 1966, Peet's Coffee ",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 60, left: 120),
                                    child: Text(
                                      "25\$",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 60, left: 90),
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 6),
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 6),
                                    child: Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 30),
                                child: Container(
                                  height: 85,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.white.withOpacity(0.6),
                                        Color(0xff333333).withOpacity(0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(24),
                                    ),
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Image(
                                          image: AssetImage(
                                              "assets/image/italia.png"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 120),
                                    child: Text(
                                      "Italia Coffee braw",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 30),
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 120),
                                child: Text(
                                  "Since 1966, Peet's Coffee ",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 60, left: 120),
                                    child: Text(
                                      "20\$",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 60, left: 90),
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 6),
                                    child: Text(
                                      "1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 60, left: 6),
                                    child: Icon(
                                      Icons.remove_circle_outline,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          Stack(
                            children: [
                              Container(
                                height: 60,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Color(0xff67432D), width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(28),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15, left: 30),
                                  child: Text(
                                    "Promo Code ",
                                    style: TextStyle(
                                      fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        Color(0xff894622).withOpacity(0.5)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: Container(
                                  height: 60,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Color(0xff67432D),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(28),
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Apply ",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 40,
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Subtotal ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 130),
                                child: Text("40 ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("USD ", style: TextStyle(color: Colors.white.withOpacity(0.5),fontWeight: FontWeight.w500, fontSize: 15),),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Tax and Fees ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 85),
                                child: Text("6.2 ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("USD ", style: TextStyle(color: Colors.white.withOpacity(0.5),fontWeight: FontWeight.w500, fontSize: 15),),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Delivery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 135),
                                child: Text("8.2 ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("USD ", style: TextStyle(color: Colors.white.withOpacity(0.5),fontWeight: FontWeight.w500, fontSize: 15),),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Total  ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155),
                                child: Text("72 ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("USD ", style: TextStyle(color: Colors.white.withOpacity(0.5),fontWeight: FontWeight.w500, fontSize: 15),),
                              ),

                            ],
                          ),

                          SizedBox(
                            height: 30,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return Finish();
                                },),);
                              },
                              child: Container(
                                height: 50,
                                width: 280,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff6A432D), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(32),),
                                ),
                                child: Center(child: Text("CHECKOUT", style: TextStyle(color: Color(0xff6A432D), ),)),
                              ),
                            ),
                          ),

                        ],
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
