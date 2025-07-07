import 'package:flutter/material.dart';
import 'KKProfiling.dart';


class userProfile extends StatefulWidget {
  const userProfile({super.key});

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            width: 335,
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/logo.jpg',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "SK-INSIGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),

                PopupMenuButton<String>(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 8, // Shadow effect
                  onSelected: (value) {
                    if (value == 'educational') {
                      print("Educational Assistance");
                    } else if (value == 'profiling') {
                      print("Profiling");
                    }
                  },

                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'educational',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.school,
                              color: Colors.blueAccent,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Educational Assistance',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      value: 'profiling',
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.green,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Kkprofiling(),
                                  ),
                                );
                              },
                              child: const Text(
                                "SK Profiling",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // Center: Hamburger menu

                // Right: Person + Bell
                Row(
                  children: const [
                    Icon(Icons.person, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.notifications, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Container(
                    child: Image.asset('assets/profile.jpg'),
                  )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  ),
                  Text('this is also a container'),
              ],
            ),
          )
          

        ],
      ),
    );
  }
}
