import 'package:flutter/material.dart';
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
      backgroundColor: const Color(0xFFF4F5F7),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // Header
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 50, bottom: 30),
                        decoration: const BoxDecoration(
                          color: Color(0xFF0A2C59),
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
                                'assets/logo.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "SANGGUNIANG\nKABATAAN BARANGAY\nPUTING BATO WEST",
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

                      // Form container
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width > 390
                                ? 350
                                : MediaQuery.of(context).size.width - 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    "Reset Password",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      hintText: 'New Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                      ),
                                      fillColor: Color(0xFFF4F5F7),
                                      filled: false,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  TextField(
                                    obscureText: _obscurePassword,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.lock),
                                      hintText: 'Confirm Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                      ),
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
                                  const SizedBox(height: 25),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF0A2C59),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Forgot3()),
                                        );
                                      },
                                      child: const Text(
                                        "Submit",
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

                      const SizedBox(height: 20), // Add bottom spacing
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
