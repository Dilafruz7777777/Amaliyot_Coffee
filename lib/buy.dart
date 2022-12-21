import 'dart:ui';

import 'package:amaliyotcoffee/MenuPage.dart';
import 'package:amaliyotcoffee/Model1.dart';
import 'package:amaliyotcoffee/Model2.dart';
import 'package:amaliyotcoffee/Payment.dart';
import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
final Model1 list;
  const Buy({Key? key , required this.list}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
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
                    SizedBox(
                      height: 200,
                      child: Container(
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
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40, left: 50),
                              child: Container(
                                height: 160,
                                width: 260,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    // height for image
                                    scale: 1.50,
                                    // width for image
                                    opacity: 10.0,
                                    image: AssetImage(
                                      widget.list.image,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 220, top: 20),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) {
                                                return MenuPage();
                                              },
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.arrow_circle_left_outlined,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 220, top: 80),
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 70),
                            child: Text(
                              widget.list.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.yellowAccent,
                                  size: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4, top: 2),
                                child: Text(
                                  "2.5",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 60),
                                child: Text(
                                  widget.list.cost,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 80),
                                child: Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 6),
                                child: Text(
                                  "03",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 6),
                                child: Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.white,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18, left: 60, right: 30),
                            child: Text(
                              "The beans you brew are actually the processed and roasted seeds from a fruit, which is coffee",
                              softWrap: true,
                              style: TextStyle(color: Colors.white, fontSize: 15,),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15, left: 60),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC4C4C4).withOpacity(0.48),
                                    shape: BoxShape.circle,
                                    // image: DecorationImage(
                                    //   opacity: 15,
                                    //   scale: 2,
                                    //   image: AssetImage("assets/image/italia.png",),
                                    // ),
                                  ),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Image(
                                          image: AssetImage(widget.list.image),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, top: 10),
                                child: Text(widget.list.title, style: TextStyle(color: Colors.white),),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 60, top: 10),
                                child: Text(widget.list.cost, style: TextStyle(color: Colors.white),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Icon(Icons.radio_button_off_outlined, color: Colors.white,),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, left: 8.0, right: 8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return Payment();
                                },),);
                              },
                              child: Container(
                                height: 50,
                                width: 240,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff6A432D), width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(32),),
                                ),
                                child: Center(child: Text("Place Order", style: TextStyle(color: Color(0xff6A432D), ),)),
                              ),
                            ),
                          )
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
