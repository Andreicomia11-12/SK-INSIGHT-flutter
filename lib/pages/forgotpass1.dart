import 'package:flutter/material.dart';

class Forgot1 extends StatelessWidget {
  const Forgot1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/sk.jpg',
              ),

            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Check your Email'),
                )
              ],
            ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('If an account with that email exist, a reset link has been sent'),
                )
              ],
            )
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Please check your inbox or spam folder'),
                )
              ],
            )
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text('Go back to'),
                ),
                ElevatedButton(onPressed: () {}, child: Text('Log in'))
              ],
            )
            ),
          ],
        ),
      ),
    );
  }
}
