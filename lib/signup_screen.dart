import 'package:flutter/material.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1
            Container(
              height: 250,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90)),
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 130, 110, 136)),
                    (Color(0xFF591D6B))
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("assets/Ichrak.png"),
                  height: 80,
                ),
              ),
            ),
            //2
            Container(
              margin: EdgeInsets.only(left: 20, top: 40),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Create acount",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF501063)),
              ),
            ),
            //3
            // Full Name
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xFF501063),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Full Name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF501063))),
                ),
              ),
            ),
            //4
            // enter email
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xFF501063),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Enter Email",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF501063))),
                ),
              ),
            ),
            //5
            // number phone
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xFF501063),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Number Phone",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF501063))),
                ),
              ),
            ),
            //6
            // enter password
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xFF501063),
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.vpn_key,
                    color: Color(0xFF501063),
                  ),
                  hintText: "Enter Password",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Color(0xFF501063))),
                ),
              ),
            ),
            //7
            GestureDetector(
              onTap: () => {},
              child: Container(
                alignment: Alignment.center,
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    (Color.fromARGB(255, 176, 150, 184)),
                    (Color(0xFF591D6B))
                  ], begin: Alignment.topLeft, end: Alignment.topRight),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            //8
            // Register
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already member ? "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))
                    },
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Color(0xFF501063),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
