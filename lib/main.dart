import 'package:flutter/material.dart';
import 'package:skinsight/pages/KKProfiling.dart';
import 'package:skinsight/pages/LGBTQProfiling.dart';
import 'package:skinsight/pages/announcement.dart';
import 'package:skinsight/pages/educ.dart';
import 'package:skinsight/pages/home.dart';
import 'package:skinsight/pages/userProfile.dart';
import 'pages/signup.dart';
import 'pages/login.dart';
import 'pages/forgot_pass.dart';
import 'pages/forgotpass1.dart';
import 'pages/forgotpass2.dart';
import 'pages/forgotpass3.dart';
import 'pages/aboutus.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SK-INSIGHT',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: Announcement(), // or any other screen like Login() if needed
    );
  }
}
