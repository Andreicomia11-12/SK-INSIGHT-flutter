import 'package:flutter/material.dart';
import 'KKProfiling.dart';

class LGBTQ extends StatelessWidget {
  const LGBTQ({super.key});

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
              margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              width: 335,
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: const Color(0xFF0A2C59),
                borderRadius: BorderRadius.circular(18),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left: Logo + Text
                  Row(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/logo.jpg',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "SK-INSIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  PopupMenuButton<String>(
                    icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 8, // Shadow effect
                    onSelected: (value) {
                      if (value == 'educational') {
                        print("Educational Assistance");
                      } else if (value == 'profiling') {
                        print("Profiling");
                      }
                    },

                    itemBuilder: (BuildContext context) => [
                      PopupMenuItem(
                        value: 'educational',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 12.0,
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.school,
                                color: Colors.blueAccent,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Educational Assistance',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'profiling',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 12.0,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.green,
                                size: 20,
                              ),
                              const SizedBox(width: 10),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Kkprofiling(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "SK Profiling",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Center: Hamburger menu

                  // Right: Person + Bell
                  Row(
                    children: const [
                      Icon(Icons.person, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ],
              ),
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
                      color: Colors.white,
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
                          width: double.infinity,
                          child: Text(
                            'LGBTQIA+ Profiling',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: Text(
                            'TO THE RESPONDENTS:',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            'Ang form na ito ay ginawa ng Sangguniang Kabataan ng Barangay Puting Bato West upang makilala ang mga miyembro ng LGBTQIA+ sa ating komunidad. Sa pamamagitan ng impormasyong ito, mas maipaplano at maisasagawa ang mga aktibidad at kaganapan para sa Pride Month.',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            'REST ASSURED THAT ALL INFORMATION GATHERED FROM THIS STUDY WILL BE TREATED WITH UTMOST CONFIDENTIALITY.',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.left,
                          ),
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
                          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          width: 330,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                                width: double.infinity,
                                child: Text('Last Name:'),
                              ),
                              Container(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Your Answer',
                                  ),
                                ),
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
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                width: 330,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                      width: double.infinity,
                                      child: Text('First Name:'),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Your Answer',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                width: 330,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                      width: double.infinity,
                                      child: Text('Middle Name:'),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Your Answer',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                width: 330,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                      width: double.infinity,
                                      child: Text('Birthday:'),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Your Answer',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                width: 330,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
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
                                      width: double.infinity,
                                      child: Text('Sex Assigned at Birth:'),
                                    ),
                                    Container(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Your Answer',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                width: 330,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('LGBTQIA+ Classification:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      dropdownColor: Colors.white,
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'In School Youth',
                                          child: Text(
                                            'In School Youth',
                                            style: TextStyle(),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Lesbian',
                                          child: Text(
                                            'Lesbian',
                                            style: TextStyle(),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Gay',
                                          child: Text(
                                            'Gay',
                                            style: TextStyle(),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Transgender',
                                          child: Text(
                                            'Transgender',
                                            style: TextStyle(),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Intersex',
                                          child: Text(
                                            'Intersex',
                                            style: TextStyle(),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Asexual',
                                          child: Text(
                                            'Asexual',
                                            style: TextStyle(),
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        // handle selection
                                      },
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
