import 'package:flutter/material.dart';
import 'package:skinsight/pages/home.dart';
import 'package:skinsight/pages/userProfile.dart';
import '../pages/KKProfiling.dart';
import '../pages/educ.dart';
import '../pages/LGBTQProfiling.dart';
import '../pages/announcement.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: const Color(0xFF0A2C59),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side: Logo + App Name
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    'assets/logo.jpg',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Text(
                      "SK-INSIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Right side: Menu + Notification + Profile Icon
          Row(
            children: [
              PopupMenuButton<String>(
                icon: const Icon(Icons.menu, color: Colors.white, size: 35),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 8,
                onSelected: (value) {
                  if (value == 'educational') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const educ()));
                  } else if (value == 'profiling') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Kkprofiling()));
                  } else if (value == 'LGBTQ') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LGBTQ()));
                  }
                },
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    value: 'educational',
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text('Educational Assistance'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'profiling',
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text('SK Profiling'),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: 'LGBTQ',
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text('LGBTQ Profiling'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Announcement()));
                },
                child: const Icon(Icons.notifications, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserProfile()));
                },
                child: const Icon(Icons.person, color: Colors.white, size: 30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Reusable page wrapper with fixed navbar
class PageWithFixedNavbar extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  
  const PageWithFixedNavbar({
    super.key,
    required this.child,
    this.backgroundColor = const Color(0xFFD1E1F5),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          // Scrollable content under the navbar
          Padding(
            padding: const EdgeInsets.only(top: 100), // Adjust for navbar height + margin
            child: child,
          ),

          // Fixed navbar at the top
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: CustomNavBar(),
            ),
          ),
        ],
      ),
    );
  }
}
