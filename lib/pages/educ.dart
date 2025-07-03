import 'package:flutter/material.dart';
import 'KKProfiling.dart';
import 'siblings_section.dart';

class educ extends StatelessWidget {
  const educ({super.key});

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
                          child:
                          Image.asset('assets/logo.jpg',
                            width: 40, height: 40,
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
                      icon: const Icon(Icons.menu, color: Colors.white, size: 30,),
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
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Row(
                            children:  [
                              Icon(Icons.school, color: Colors.blueAccent, size: 20),
                              SizedBox(width: 10),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const educ(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Educational Assistance",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'profiling',
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: Row(
                            children: [
                              const Icon(Icons.person, color: Colors.green, size: 20),
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
                                  ),),
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
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                          width: 330,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Last Name:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'First Name:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Middle Name:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Place of Birth:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Age:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Gender:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Religion:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Civil Status:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Email:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Contact Number:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Name of School:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'School Address:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Years in College:'
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Types of Benefit being Applied:'
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Your Answer(ex.Educational Assistance)',
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Father' + "'" + "s Name:"
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Your Answer',
                                ),
                              ),
                              ),
                              Container(
                                child: Text(
                                  'Contact Number',
                                ),
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
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Mother' + "'" + "s Name:"
                                ),
                              ),
                              Container(
                                child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Your Answer',
                                ),
                              ),
                              ),
                              Container(
                                child: Text(
                                  'Contact Number',
                                ),
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
                          child: const Center(
                            child: SiblingSection(),
                          ),
                        )

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