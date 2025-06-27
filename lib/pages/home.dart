import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: 320,
              height: 65,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF0A2C59),
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.person, color: Colors.white),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                  // Center popup menu button (hamburger)
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    color: Colors.white,
                    onSelected: (value) {
                      if (value == 'educational') {
                        print("Educational Assistance clicked");
                      } else if (value == 'profiling') {
                        print("Profiling clicked");
                      }
                    },
                    itemBuilder: (BuildContext context) => [
                      const PopupMenuItem(
                        value: 'educational',
                        child: Text('Educational Assistance'),
                      ),
                      const PopupMenuItem(
                        value: 'profiling',
                        child: Text('Profiling'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
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
                          margin: const EdgeInsets.only(top: 24),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/home.jpg',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 32),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0A2C59),
                            ),
                            child: const Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "How it Works",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF0A2C59),
                            ),
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
