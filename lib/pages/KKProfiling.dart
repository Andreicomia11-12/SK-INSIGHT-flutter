import 'package:flutter/material.dart';
import 'KKProfiling.dart';

class Kkprofiling extends StatelessWidget {
  const Kkprofiling({super.key});

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
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
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
                        Container(child: Text('KK Survey Questionnaire')),

                        Container(child: Text('TO THE RESPONDENTS:')),

                        Container(
                          width: double.infinity,
                          child: Text(
                            'We are currently conducting a study that focuses on assessing the demographic information of the Katipunan ng Kabataan. We would like to ask your participation by taking your time to answer this questionnaire. Please read the questions carefully and answer them accurately',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: Text(
                            'REST ASSURED THAT ALL INFORMATION GATHERED FROM THIS STUDY WILL BE TREATED WITH UTMOST CONFIDENTIALITY.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          child: Text(
                            'We are currently conducting a study that focuses on assessing the demographic information of the Katipunan ng Kabataan. We would like to ask your participation by taking your time to answer this questionnaire. Please read the questions carefully and answer them accurately',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          child: Text(
                            'REST ASSURED THAT ALL INFORMATION GATHERED FROM THIS STUDY WILL BE TREATED WITH UTMOST CONFIDENTIALITY.',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
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
                                child: Text(
                                  'I. Profile',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: Text(
                                  'Last Name:',
                                  textAlign: TextAlign.left,
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
                                    Container(child: Text('I. Profile')),
                                    Container(child: Text('Last Name:')),
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
                                      child: Text('Suffix:'),
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
                                      child: Text('Gender:'),
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
                                      child: Text('Age:'),
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
                                      child: Text('Region:'),
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
                                      child: Text('Province:'),
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
                                      child: Text('Municipality:'),
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
                                      child: Text('Barangay:'),
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
                                      child: Text('Purok:'),
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
                                      child: Text('E-mail Address:'),
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
                                    Container(child: Text('First Name:')),
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
                                    Container(child: Text('Middle Name:')),
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
                                    Container(child: Text('Suffix:')),
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
                                    Container(child: Text('Gender:')),
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
                                    Container(child: Text('Age:')),
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
                                    Container(child: Text('Birthday:')),
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
                                    Container(child: Text('Region:')),
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
                                    Container(child: Text('Province:')),
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
                                    Container(child: Text('Municipality:')),
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
                                    Container(child: Text('Barangay:')),
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
                                    Container(child: Text('Purok:')),
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
                                    Container(child: Text('E-mail Address:')),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Civil Status:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Single',
                                          child: Text(
                                            'Single',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Married',
                                          child: Text(
                                            'Married',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Divorced',
                                          child: Text(
                                            'Divorced',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Widowed',
                                          child: Text(
                                            'Widowed',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Separated',
                                          child: Text(
                                            'Separated',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Annuled',
                                          child: Text(
                                            'Annuled',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Live-in',
                                          child: Text(
                                            'Live-in',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Single',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Married',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Divorced',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Widowed',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Separated',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Annuled',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Live-in',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Youth Classification:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'In School Youth',
                                          child: Text(
                                            'In School Youth',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Out School Youth',
                                          child: Text(
                                            'Out School Youth',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Working',
                                          child: Text(
                                            'Working',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Youth Special Needs',
                                          child: Text(
                                            'Youth w/ needs',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'In School Youth',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Out School Youth',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Working',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Youth w/ needs',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Youth Age Group:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Child Youth (15-17 yrs old)',
                                          child: Text(
                                            'Child Youth (15-17 yrs old)',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Core Youth (15-17 yrs old)',
                                          child: Text(
                                            'Core Youth (18-24 yrs old)',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Young Adult',
                                          child: Text(
                                            'Young Adult (25-30 yrs old)',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Child Youth (15-17 yrs old)',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Core Youth (18-24 yrs old)',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Young Adult (25-30 yrs old)',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Work Status:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Employed',
                                          child: Text(
                                            'Employes',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Unemployed',
                                          child: Text(
                                            'Unemployed',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Self-Employed',
                                          child: Text(
                                            'Self-Employed',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Looking for a Job',
                                          child: Text(
                                            'Looking for a Job',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Not Interested',
                                          child: Text(
                                            'Not Interested',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Employes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Unemployed',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Self-Employed',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Looking for a Job',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Not Interested',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Educational Background:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Elementary Undergraduate',
                                          child: Text(
                                            'Elementary Undergraduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Elementary Graduate',
                                          child: Text(
                                            'Elementary Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'High School Undergraduate',
                                          child: Text(
                                            'High School Undergraduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'High School Graduate',
                                          child: Text(
                                            'High School Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Vocational Graduate',
                                          child: Text(
                                            'Vocational Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'College Undergraduate',
                                          child: Text(
                                            'College Undergraduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'College Graduate',
                                          child: Text(
                                            'College Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Master Level',
                                          child: Text(
                                            'Master Level',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Master Graduate',
                                          child: Text(
                                            'Master Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Doctorate Level',
                                          child: Text(
                                            'Doctorate Level',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'Doctorate Graduate',
                                          child: Text(
                                            'Doctorate Graduate',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Elementary Undergraduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Elementary Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'High School Undergraduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'High School Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Vocational Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'College Undergraduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'College Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Master Level',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Master Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Doctorate Level',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'Doctorate Graduate',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Registered SK Voter:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Yes',
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'No',
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Registered National Voter:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Yes',
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'No',
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Voted last SK Election:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Yes',
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'No',
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('If yes (How many times)'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Never',
                                          child: Text(
                                            'Never',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'one to two',
                                          child: Text(
                                            'one to two',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'three or more',
                                          child: Text(
                                            'three or more',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Never',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'one to two',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'three or more',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Have You Attended KK assembly:',
                                    ),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Yes',
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'No',
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Yes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'No',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('If yes how many Times:'),
                                    const SizedBox(height: 10),
                                    DropdownButtonFormField<String>(
                                      dropdownColor: Color(0xFF0A2C59),
                                      decoration: const InputDecoration(
                                        labelText: 'Your Answer',
                                      ),
                                      items: const [
                                        DropdownMenuItem(
                                          value: 'Never',
                                          child: Text(
                                            'Never',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'one to two',
                                          child: Text(
                                            'one to two',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'three or more',
                                          child: Text(
                                            'three or more',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selectedItemBuilder:
                                          (BuildContext context) {
                                            return [
                                              Text(
                                                'Never',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'one to two',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text(
                                                'three or more',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ];
                                          },
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
                                    Container(child: Text('If no why?:')),
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
