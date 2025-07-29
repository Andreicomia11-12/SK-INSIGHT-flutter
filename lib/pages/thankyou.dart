import 'package:flutter/material.dart';
import '../widgets/custom_navbar.dart';
import 'package:skinsight/pages/home.dart';


class TY extends StatelessWidget {
  const TY({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Navbar
            Container(
              child: CustomNavBar(),
            ),

            // Body content
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
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
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
                          width: double.infinity,
                          child: Text(
                            'Thank You!',
                            style:
                            TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: Text(
                            'Your response has been successfully recorded.',
                            style:
                            TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            }, 
                            child: Text(
                            'Home',
                            style:
                            TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),
                            
                            textAlign: TextAlign.left,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0A2C59),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    16,
                                  ), // Adjust for roundness
                                ),
                              ),
                          )
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
