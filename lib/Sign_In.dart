import 'package:amaliyotcoffee/Home_Page.dart';
import 'package:amaliyotcoffee/MenuPage.dart';
import 'package:amaliyotcoffee/Sign_Up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  ]
                ),
              ),
              child:
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 20),
                child: IconButton(
                  onPressed: () {},
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return HomePage();
                      }));
                    },
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),

              ),

            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    width: 320,
                    height: 420,
                    decoration: BoxDecoration(
                        color: Color(0xff6D4831),
                        borderRadius:
                        BorderRadius.all(Radius.circular(40))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Hello!",
                            style: TextStyle(
                                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Phone Number or Email",
                              labelStyle: TextStyle(color: Colors.white,fontSize: 15),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff987257),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                              errorBorder: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20, top: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.white,),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff987257),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(16))
                              ),
                              errorBorder: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return MenuPage();
                            },),);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Container(
                              height: 50,
                              width: 290,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22),),
                                border: Border.all(color: Color(0xff6A432D), width: 1),
                                color: Colors.white,
                              ),

                              child: Center(child: Text("Sign in", style: TextStyle(color: Color(0xff74533D), fontWeight: FontWeight.w500),),),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 100),
                          child: Text("or Sign in with", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100, top: 10),
                              child: SizedBox(
                                height: 24,
                                  width: 24,
                                  child: Image(image: AssetImage("assets/image/google.png", ),),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 10),
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: Image(image: AssetImage("assets/image/facebook.png", ),),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, top: 10),
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: Image(image: AssetImage("assets/image/twitter.png", ),),),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40),
                              child: Text("Dont have an account?", style: TextStyle(color: Colors.white30),),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                                  return SignUp();
                                },),);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: Text("Sign-Up", style: TextStyle(color: Colors.white),),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            )
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 90),
            //   child: SafeArea(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Stack(
            //           children: [
            //             Padding(
            //               padding: const EdgeInsets.only(bottom: 1),
            //               child: Center(
            //                 child: Container(
            //                   width: 300,
            //                   height: 400,
            //                   decoration: BoxDecoration(
            //                       color: Color(0xff6D4831),
            //                       borderRadius:
            //                           BorderRadius.all(Radius.circular(40))),
            //                   child: Column(
            //                     mainAxisAlignment: MainAxisAlignment.start,
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Padding(
            //                         padding: const EdgeInsets.only(top: 20, left: 20),
            //                         child: Text(
            //                           "Hello!",
            //                           style: TextStyle(
            //                               fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
            //                         ),
            //                       ),
            //
            //                       Padding(
            //                         padding: const EdgeInsets.all(16.0),
            //                         child: TextFormField(
            //                           decoration: InputDecoration(
            //                             labelText: "Phone Number or Email",
            //                             labelStyle: TextStyle(color: Colors.white,fontSize: 15),
            //                             focusedBorder: OutlineInputBorder(
            //                               borderSide: BorderSide(color: Color(0xff987257),
            //                               ),
            //                               borderRadius: BorderRadius.all(Radius.circular(16))
            //                             ),
            //                             errorBorder: OutlineInputBorder(),
            //                           ),
            //                         ),
            //                       ),
            //
            //                       Padding(
            //                         padding: const EdgeInsets.all(16.0),
            //                         child: TextFormField(
            //                           decoration: InputDecoration(
            //                             labelText: "Password",
            //                             labelStyle: TextStyle(color: Colors.white,),
            //                             focusedBorder: OutlineInputBorder(
            //                                 borderSide: BorderSide(color: Color(0xff987257),
            //                                 ),
            //                                 borderRadius: BorderRadius.all(Radius.circular(16))
            //                             ),
            //                             errorBorder: OutlineInputBorder(),
            //                           ),
            //                         ),
            //                       ),
            //
            //                     ],
            //                   ),
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
