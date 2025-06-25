import 'package:flutter/material.dart';
import 'package:skinsight/pages/forgotpass1.dart';


class Forgot extends StatelessWidget {
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
                  child: Text('Forgot Your Password'),
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
                  child: Text('Enter your email to reset your password'),
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
                  child: Text('Email: __________________'),
                )
              ],
            )
            ),
            Container(
              child: Column(
                  children: [
                      Container(
                       child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Forgot1()),
                        );

                       }, child: Text('Send Reset Link'),)
                      ),
                    ]
                  )
                 ),
          ],
        ),
      ),
    );
  }
}

