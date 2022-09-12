// ignore_for_file: prefer_const_constructors

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_design/Login_process/MainPage.dart';

class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

Widget EmailArea(double screenWidth, BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.email),
                hintText: "Enter Your Email Adress",
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 9.0, horizontal: 20),
          child: Center(
            child: Text(
              "You may receive SMS notifications from us for security and login purposes",
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Center(
              child: Text(
                "Create new account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            width: screenWidth,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            color: Colors.black,
            height: 2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? "),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginScreen())));
              },
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget PhoneArea(double screenWidth, BuildContext context) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.email),
                hintText: "Enter Your Phone Number",
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            child: Center(
              child: Text(
                "Create new account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            width: screenWidth,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            color: Colors.black,
            height: 2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? "),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginScreen())));
              },
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  bool _CurrentTab = false;
  List<String> items = ["EMAIL", "PHONE"];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 70,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _CurrentTab = false;
                            print(_CurrentTab);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: _CurrentTab
                                ? Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 0, // Underline thickness
                                    ),
                                  )
                                : Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                          ),
                          child: Text(
                            "EMAIL",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: _CurrentTab
                                  ? FontWeight.normal
                                  : FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _CurrentTab = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: _CurrentTab
                                ? Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1.5, // Underline thickness
                                    ),
                                  )
                                : Border(
                                    bottom: BorderSide(
                                      color: Colors.white,
                                      width: 0,
                                    ),
                                  ),
                          ),
                          child: Text(
                            "PHONE",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: _CurrentTab
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                Container(
                  child: _CurrentTab
                      ? PhoneArea(screenWidth, context)
                      : EmailArea(screenWidth, context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
