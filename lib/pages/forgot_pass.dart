import 'package:flutter/material.dart';
import 'package:skinsight/pages/forgotpass1.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
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
                        "Forgot Your Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Enter your email to reset your password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF4F5F7),
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF3467B3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Forgot1()),
                            );
                          },
                          child: Text(
                            "Send Reset Link",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
=======
      body: Container(
        child: Column(
          children: [
            Container(child: Image.asset('assets/sk.jpg')),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Container(child: Text('Forgot Your Password'))],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text('Enter your email to reset your password'),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Container(child: Text('Email: __________________'))],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forgot1()),
                        );
                      },
                      child: Text('Send Reset Link'),
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
