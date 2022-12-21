import 'dart:ui';

import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  const Finish({Key? key}) : super(key: key);

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
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
              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
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
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Icon(
                                  Icons.radio_button_off_outlined,
                                  color: Color(0xff502C0B),
                                  size: 170,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 140, left: 40),
                                child: Icon(
                                  Icons.done_rounded,
                                  color: Colors.white,
                                  size: 90,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "Order Completed!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),

                          Text(
                            "Order number #347664784!",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
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
