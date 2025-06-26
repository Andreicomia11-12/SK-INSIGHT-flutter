import 'package:flutter/material.dart';
import 'pages/signup.dart';
import 'pages/login.dart';
import 'pages/forgot_pass.dart';
import 'pages/forgotpass1.dart';
import 'pages/forgotpass2.dart';
import 'pages/forgotpass3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SK-INSIGHT',
      home: Forgot3(), // or Forgot() if you want that first
    );
  }
}
