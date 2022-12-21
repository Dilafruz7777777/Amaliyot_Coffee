import 'package:amaliyotcoffee/MenuPage.dart';
import 'package:amaliyotcoffee/Sign_In.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                        const Color(0xff67432D),
                        const Color(0xffAB6635).withOpacity(0),
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 250, top: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const SignIn();
                        }));
                      },
                      child: const Icon(
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
                  const Text(
                    "Sign-Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 520,
                    width: 320,
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 320,
                          height: 500,
                          decoration: const BoxDecoration(
                              color: Color(0xff6D4831),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                  left: 20,
                                ),
                                child: Text(
                                  "Full Name",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 5, top: 5),
                                child: TextFormField(
                                  cursorColor: Colors.brown.shade700,
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                    color: Colors.brown.shade900,
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    filled: true,
                                    fillColor: Color(0xff987257),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff987257),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Email Address",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 5, top: 5),
                                child: TextFormField(
                                  cursorColor: Colors.brown.shade700,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                    color: Colors.brown.shade900,
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    filled: true,
                                    fillColor: Color(0xff987257),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff987257),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Phone Number",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 5, top: 5),
                                child: TextFormField(
                                  cursorColor: Colors.brown.shade700,
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(
                                    color: Colors.brown.shade900,
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    filled: true,
                                    fillColor: Color(0xff987257),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff987257),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Create Password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 5, top: 5),
                                child: TextFormField(
                                  cursorColor: Colors.brown.shade700,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                    color: Colors.brown.shade900,
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    filled: true,
                                    fillColor: Color(0xff987257),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff987257),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Comfirm Password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, right: 16.0, bottom: 5, top: 5),
                                child: TextFormField(
                                  cursorColor: Colors.brown.shade700,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                    color: Colors.brown.shade900,
                                    decoration: TextDecoration.none,
                                  ),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(
                                        20.0, 10.0, 20.0, 10.0),
                                    filled: true,
                                    fillColor: Color(0xff987257),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff987257),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff987257),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              InkWell(
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
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 15),
                                  child: Container(
                                    height: 50,
                                    width: 290,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(22)),
                                      border: Border.all(
                                          color: const Color(0xff6A432D),
                                          width: 1),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            color: Color(0xff74533D),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
