import 'package:flutter/material.dart';
import 'package:skinsight/widgets/custom_navbar.dart';

class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomNavBar(), // ✅ Same as in Home

            Container(
              alignment: Alignment.center, // ✅ Center the inner content
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0), // ✅ Matches Home page margin
                    width: 330,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                          width: 150,
                          height: 150,
                          margin: const EdgeInsets.only(top: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset(
                              'assets/logo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: const [
                              Text(
                                'About SK-INSIGHT',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0A2C59),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'SK Insight is a digital platform developed to empower the Sangguniang Kabataan (SK) councils by providing smart analytics, centralized data collection, and streamlined community engagement tools.',
                                style: TextStyle(fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Our goal is to promote transparency, improve public service, and enable data-driven decision making, especially in tracking youth assistance, profiling, and community program effectiveness.',
                                style: TextStyle(fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'The Sangguniang Kabataan (SK) is the youth council of every barangay. It serves as the voice of young people in governance, encouraging civic engagement and leadership development among the youth.',
                                style: TextStyle(fontSize: 13),
                                textAlign: TextAlign.center,
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
          ],
        ),
      ),
    );
  }
}
