import 'dart:ui';
import 'package:amaliyotcoffee/Model1.dart';
import 'package:amaliyotcoffee/Model2.dart';
import 'package:amaliyotcoffee/buy.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  List<Model1> list = [
    Model1(title: "Capachino", image: "assets/image/kisbi.png", cost: "\$5"),
    Model1(title: "Beets", image: "assets/image/beets.png", cost: "\$8"),
    Model1(title: "Lemonade", image: "assets/image/limon.png", cost: "\$2"),
    Model1(title: "Latte", image: "assets/image/latte.png", cost: "\$10"),
    Model1(title: "Lemonade", image: "assets/image/limon.png", cost: "\$6"),
    Model1(title: "Capachino", image: "assets/image/kisbi.png", cost: "\$5"),
  ];

  List<Model2> list2 = [
    Model2(title: "Italia", image: "assets/image/italia.png", cost: "\$4"),
    Model2(title: "Donot", image: "assets/image/donot.png", cost: "\$7"),
    Model2(title: "Ceshew nuts", image: "assets/image/keshyu.png", cost: "\$6"),
    Model2(title: "Pringles", image: "assets/image/chips.png", cost: "\$5"),
    Model2(title: "Italia", image: "assets/image/italia.png", cost: "\$4"),
    Model2(title: "Donot", image: "assets/image/donot.png", cost: "\$7"),
  ];
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
                                Color(0xff67432D),
                                Color(0xffAB6635).withOpacity(0),
                              ]),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 10),
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 15),
                              child: Container(
                                height: 50,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(22),
                                  ),
                                  border: Border.all(
                                      color: Color(0xff6A432D), width: 1.5),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xff6A432D),
                                        Color(0xff834323).withOpacity(0.6),
                                      ]),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Asokoro, Abuja",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.expand_more_outlined,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Text(
                              "Hello,  Ahlam",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 45, top: 10),
                            child: Text(
                              "What are you drinking today?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 50),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff834323).withOpacity(0.6),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      border: Border.all(color: Colors.white),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.brown,
                                            blurRadius: 2,
                                            offset: Offset(3, 6))
                                      ]),
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 50),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xff834323).withOpacity(0.6),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    border: Border.all(color: Colors.white),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.brown,
                                          blurRadius: 2,
                                          offset: Offset(3, 6)),
                                    ],
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/image/icon2.png"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 50),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xff834323).withOpacity(0.6),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      border: Border.all(color: Colors.white),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.brown,
                                            blurRadius: 2,
                                            offset: Offset(3, 6))
                                      ]),
                                  child: Icon(
                                    Icons.more_horiz_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Container(
                              height: 3,
                              width: 248,
                              color: Colors.white30,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 40),
                                child: Text(
                                  "Favourite",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 30),
                                child: Text(
                                  "Promotions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 30),
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 35),
                                child: Text(
                                  "Todays Promotion",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 30),
                                child: Text(
                                  "see all",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 160,
                                width: 360,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: InkWell(
                                    child: Expanded(
                                      child: ListView.builder(
                                        itemCount: list.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) => Buy(
                                                          list: list[index])));
                                            },
                                            child: Container(
                                              height: 160,
                                              width: 120,
                                              margin:
                                                  EdgeInsets.only(right: 16),
                                              decoration: BoxDecoration(
                                                color: Colors.white30,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(24),
                                                ),
                                              ),
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2),
                                                    child: Text(
                                                      list[index].title,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff623623),
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2),
                                                    child: SizedBox(
                                                        height: 100,
                                                        width: 100,
                                                        child: Image(
                                                          image: AssetImage(
                                                              list[index]
                                                                  .image),
                                                        )),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 30),
                                                        child: Text(
                                                          "Buy",
                                                          style: TextStyle(
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    0.5),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 20),
                                                        child: Text(
                                                          list[index].cost,
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 160,
                                width: 360,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Expanded(
                                      child: ListView.builder(
                                        itemCount: list2.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            height: 160,
                                            width: 120,
                                            margin:   EdgeInsets.only(right: 16),
                                            decoration: const   BoxDecoration(
                                              color: Colors.white30,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(24),
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 2),
                                                  child: Text(
                                                    list2[index].title,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff623623),
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 2),
                                                  child: SizedBox(
                                                      height: 100,
                                                      width: 100,
                                                      child: Image(
                                                        image: AssetImage(
                                                            list2[index].image),
                                                      )),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30),
                                                      child: Text(
                                                        "Buy",
                                                        style: TextStyle(
                                                          color: Colors.white
                                                              .withOpacity(0.5),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Text(
                                                        list2[index].cost,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 2,
                              width: 300,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 7),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 255, top: 7),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                ),
                              ),
                            ],
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
