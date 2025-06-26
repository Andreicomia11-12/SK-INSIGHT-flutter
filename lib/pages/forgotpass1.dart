import 'package:flutter/material.dart';
import 'package:skinsight/pages/forgotpass1.dart';
import 'package:skinsight/pages/forgotpass2.dart';



class Forgot1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      body: Column(
        children: [
          // Blue navbar-like header at the top
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 50, bottom: 30),
            decoration: BoxDecoration(
              color: Color(0xFF0A2C59), // Blue color
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/sk.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "SANGGUNIANG KABATAAN\n BARANGAY\nPUTING BATO WEST",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          // White forgot password form centered in a box
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width > 390
                    ? 350
                    : MediaQuery.of(context).size.width - 40,
                constraints: BoxConstraints(minHeight: 300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Check Your Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "If an account with that email exists, a reset link has been sent",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:20,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Please check your inbox or spam folder",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize:20,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Go back to',
                            style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(height: 25),
                            SizedBox(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Forgot1()),
                                  );
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.blue
                                  ),
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgot2()),
                );
              },
              child: Text(
                "link to reset",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

