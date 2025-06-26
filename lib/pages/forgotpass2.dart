import 'package:flutter/material.dart';
import 'package:skinsight/pages/forgotpass1.dart';
import 'package:skinsight/pages/forgotpass3.dart';


class Forgot2 extends StatefulWidget {
  @override
  _Forgot2State createState() => _Forgot2State();
}

class _Forgot2State extends State<Forgot2> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // White login form centered in a box
          Expanded(
            child: Center(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Reset your Password"
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Create New Password'
                        ),
                      ),
                      TextField(
                        obscureText: _obscurePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Confirm Your Password',
                          filled: true,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Forgot3()),
                          );
                          },
                          child: Text(
                            "Confirm"
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
      ),
    );
  }
}
