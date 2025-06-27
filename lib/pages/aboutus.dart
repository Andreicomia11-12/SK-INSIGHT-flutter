import 'package:flutter/material.dart';

class Aboutus extends StatelessWidget {
  const Aboutus ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 0, 0),
              width: 320,
              height: 50,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF0A2C59),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                    width: 300,
                    height: 600,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
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
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset(
                              'assets/logo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Column(
                              children: [
                                Text('About SK-INSIGHT',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0A2C59),
                                  ),),
                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child:
                                    Text('SK Insight is a digital platform developed to empower the Sangguniang Kabataan (SK) councils by providing smart analytics, centralized data collection, and streamlined community engagement tools.',
                                      style: TextStyle(
                                        fontSize: 13
                                      ), textAlign: TextAlign.center,)
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child:
                                    Text('Our goal is to promote transparency, improve public service, and enable data-driven decision making, especially in tracking youth assistance, profiling, and community program effectiveness.',
                                      style: TextStyle(
                                          fontSize: 13
                                      ), textAlign: TextAlign.center,)
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child:
                                    Text('The Sangguniang Kabataan (SK) is the youth council of every barangay. It serves as the voice of young people in governance, encouraging civic engagement and leadership development among the youth.',
                                      style: TextStyle(
                                          fontSize: 13
                                      ), textAlign: TextAlign.center,)
                                )

                              ],
                            ),
                          )
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
