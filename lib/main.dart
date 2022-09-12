import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui_design/Login_process/Create_New_Account.dart';
import 'package:instagram_ui_design/Login_process/LoginPage.dart';
import 'package:instagram_ui_design/Login_process/MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
