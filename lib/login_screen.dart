import 'package:flutter/material.dart';
import 'package:ui_authentication/signup_screen.dart';

import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //1
          Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(colors: [
                  (Color(0xFF501063)),
                  (Color.fromARGB(255, 130, 110, 136))
                ], begin: Alignment.topRight, end: Alignment.bottomRight)),
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
            margin: EdgeInsets.only(left: 20, top: 20),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Welcome \n Bake",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF501063)),
            ),
          ),
          //3
          // enter email
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
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
          //4
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
          //5
          Container(
            margin: EdgeInsets.only(top: 10, right: 50),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              child: Text("Forget Password?"),
              onTap: () => {},
            ),
          ),
          //6
          TextButton(
            onPressed: () => {
              /** onClick code here */
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  (Color.fromARGB(255, 176, 150, 184)),
                  (Color.fromARGB(255, 89, 29, 107))
                ], begin: Alignment.topLeft, end: Alignment.topRight),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),

          //7
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account ? "),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupScreen()))
                  },
                  child: Text(
                    "Register now",
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
    ));
  }
}
