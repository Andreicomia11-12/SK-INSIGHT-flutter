import 'package:flutter/material.dart';
import 'KKProfiling.dart';
import 'thankyou.dart';
import 'package:skinsight/pages/home.dart';
import '../widgets/custom_navbar.dart';


class Kkprofiling extends StatelessWidget {
  const Kkprofiling({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWithFixedNavbar(
      child: SingleChildScrollView(
        child: Column(
          children: [
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
                        Container(
                          width: double.infinity,
                          child: Text(
                            'KK Survey Questionnaire',
                            style:
                            TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          width: double.infinity,
                          child: Text(
                            'TO THE RESPONDENTS:',
                            style:
                            TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            'We are currently conducting a study that focuses on assessing the demographic information of the Katipunan ng Kabataan. We would like to ask your participation by taking your time to answer this questionnaire. Please read the questions carefully and answer them accurately',
                            style:
                            TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text(
                            'REST ASSURED THAT ALL INFORMATION GATHERED FROM THIS STUDY WILL BE TREATED WITH UTMOST CONFIDENTIALITY.',
                            style:
                            TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400
                            ),
                            textAlign: TextAlign.left,
                          ),
                        )
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
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
                                    labelStyle: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black38
                                    )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                                          labelStyle: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38
                                        )
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
                          margin: EdgeInsets.fromLTRB(30, 15, 0, 20),
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: 100, // Set your desired square size
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TY()),
                              );
                              },
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ), // Or your preferred child
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0A2C59),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    16,
                                  ), // Adjust for roundness
                                ),
                              ),
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