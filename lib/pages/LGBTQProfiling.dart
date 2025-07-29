import 'package:flutter/material.dart';
import 'package:skinsight/pages/educ.dart';
import 'package:skinsight/pages/home.dart';
import 'KKProfiling.dart';
import 'thankyou.dart';
import '../widgets/custom_navbar.dart';

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
                child: CustomNavBar(),
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
                    buildSubmitButton(context),
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
            decoration: const InputDecoration(
              labelText: 'Your Answer',
              labelStyle: TextStyle(
                fontSize: 13,
                color: Colors.black38
              )
              ),
          ),
        ],
      ),
    );
  }

  Widget buildDropdownCard(double width) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 30, bottom: 10),
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
              labelStyle: TextStyle(
                fontSize: 13,
                color: Colors.black38
              )
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

  Widget buildSubmitButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30, 0, 0, 20),
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 100,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TY()),
          );},
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0A2C59),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
