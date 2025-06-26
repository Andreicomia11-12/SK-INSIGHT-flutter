import 'package:flutter/material.dart';
import 'package:skinsight/pages/forgot_pass.dart';


class Forgot3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F5F7),
      body: Column(
        children: [
          // Blue navbar-like header at the top
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                    child: Image.asset(
                    'assets/sk.jpg'
                  ),
                  ),
                Text(
                  "SANGGUNIANG KABATAAN\n BARANGAY\nPUTING BATO WEST",
                ),
              ],
            ),
          ),
          // White forgot password form centered in a box
          Expanded(
            child: Center(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Pasword has"
                      ),
                      Text(
                        "been successfully reset!"
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Go back to'),
                            SizedBox(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Forgot()),
                                  );
                                },
                                child: Text(
                                  "Login"
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
        ],
      ),
    );
  }
}

