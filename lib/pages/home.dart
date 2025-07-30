  import 'package:flutter/material.dart';
  import 'KKProfiling.dart';
  import 'package:skinsight/pages/aboutus.dart';
  import 'educ.dart';
  import 'package:skinsight/widgets/custom_navbar.dart'; // Import the custom navbar

  class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFD1E1F5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomNavBar(), // ✅ Replaced old nav bar with component

              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      width: 330,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF0A2C59),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'SK-INSIGHT',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/home.jpg',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Text(
                              'Advanced analytics to grow your barangay programs',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF0A2C59),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: const Text(
                              'Empowering the youth through community involvement, transparency, and smart tracking of educational assistance and profiling.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF0A2C59),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF0A2C59),
                              ),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Aboutus()),
                                );
                            },
                            child: const Text(
                              "How it Works",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF0A2C59),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
