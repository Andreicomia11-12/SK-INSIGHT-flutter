import 'package:flutter/material.dart';
import 'lib/pages/signup.dart';
import 'pages/login.dart';
import 'pages/forgot_pass.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Forgot(),
    );
  }
}
