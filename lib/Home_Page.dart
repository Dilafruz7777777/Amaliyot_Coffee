import 'package:amaliyotcoffee/Sign_In.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image/Rectangle.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              child: Image.asset(
                'assets/image/AppBar.png',
                fit: BoxFit.cover,
              ),
            ),

            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Center(
                          child: Text(
                            "Coffee Made Easy" ,
                            style: TextStyle(
                              fontSize: 60,
                              letterSpacing: 5,
                              fontWeight: FontWeight.w600,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 5
                                ..color = Color(0xff6D4831),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Center(
                          child: Text(
                            "Coffee Made Easy" ,
                            style: TextStyle(
                              fontSize: 60,
                              letterSpacing: 5,
                              fontWeight: FontWeight.w600,
                             color: Colors.white,
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return SignIn();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 140),
                      child: Container(
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(22),),
                          border: Border.all(color: Color(0xff74533D), width: 2),
                          color: Colors.white,
                        ),

                        child: Center(child: Text("Start here", style: TextStyle(color: Color(0xff6A432D), fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}
