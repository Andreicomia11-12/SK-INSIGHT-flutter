import 'package:flutter/material.dart';
import 'package:skinsight/pages/educ.dart';
import 'KKProfiling.dart';

class LGBTQ extends StatelessWidget {
  const LGBTQ({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double formWidth = screenWidth * 0.9 > 500 ? 500 : screenWidth * 0.9;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Navbar
              Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                width: formWidth,
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
                  children: [
                    // Left: Logo + Text
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/logo.jpg',
                            width: 40,
                            height: 40,
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

                    // Center: Hamburger menu
                    PopupMenuButton<String>(
                      icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 8,
                      onSelected: (value) {
                        if (value == 'educational') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const educ()),
                          );
                        } else if (value == 'profiling') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Kkprofiling()),
                          );
                        }
                      },
                      itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          value: 'educational',
                          child: Row(
                            children: const [
                              Icon(Icons.school, color: Colors.blueAccent, size: 20),
                              SizedBox(width: 10),
                              Text('Educational Assistance'),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'profiling',
                          child: Row(
                            children: const [
                              Icon(Icons.person, color: Colors.green, size: 20),
                              SizedBox(width: 10),
                              Text('SK Profiling'),
                            ],
                          ),
                        ),
                      ],
                    ),

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

              const SizedBox(height: 20),

              Form(
                child: Column(
                  children: [
                    buildInfoCard(formWidth),
                    buildTextFieldCard('Last Name', formWidth),
                    buildTextFieldCard('First Name', formWidth),
                    buildTextFieldCard('Middle Name', formWidth),
                    buildTextFieldCard('Birthday', formWidth),
                    buildTextFieldCard('Sex Assigned at Birth', formWidth),
                    buildDropdownCard(formWidth),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(double width) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'LGBTQIA+ Profiling',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Text(
            'TO THE RESPONDENTS:',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 8),
          Text(
            'Ang form na ito ay ginawa ng Sangguniang Kabataan ng Barangay Puting Bato West upang makilala ang mga miyembro ng LGBTQIA+ sa ating komunidad. Sa pamamagitan ng impormasyong ito, mas maipaplano at maisasagawa ang mga aktibidad at kaganapan para sa Pride Month.',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 8),
          Text(
            'REST ASSURED THAT ALL INFORMATION GATHERED FROM THIS STUDY WILL BE TREATED WITH UTMOST CONFIDENTIALITY.',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget buildTextFieldCard(String label, double width) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 30),
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
          Text('$label:'),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Your Answer'),
          ),
        ],
      ),
    );
  }

  Widget buildDropdownCard(double width) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 30, bottom: 30),
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
          const Text('LGBTQIA+ Classification:'),
          const SizedBox(height: 10),
          DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              labelText: 'Your Answer',
            ),
            items: const [
              DropdownMenuItem(value: 'Lesbian', child: Text('Lesbian')),
              DropdownMenuItem(value: 'Gay', child: Text('Gay')),
              DropdownMenuItem(value: 'Transgender', child: Text('Transgender')),
              DropdownMenuItem(value: 'Intersex', child: Text('Intersex')),
              DropdownMenuItem(value: 'Asexual', child: Text('Asexual')),
            ],
            onChanged: (value) {
              // Handle selection
            },
          ),
        ],
      ),
    );
  }
}
