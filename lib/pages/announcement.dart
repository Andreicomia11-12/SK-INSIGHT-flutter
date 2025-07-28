import 'package:flutter/material.dart';
import 'package:skinsight/widgets/custom_navbar.dart';

class Announcement extends StatelessWidget {
  const Announcement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const CustomNavBar(),
          
           Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 15, left: 25),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    'Announcements',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

          Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.only(
                      top: 30,
                      left: 25,
                      right: 25,
                      bottom: 10,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                child: Column(
                  
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child:
                              Container(
                                  child: Text('CLEANUP DRIVE',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17
                        ),))),
                        Container(
                            child: Container(
                              child: Text(
                                '06-13-24',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: Container(
                              child: Text(
                                'Community Cleanup',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                          _viewAnnouncementModal(context);
                      },
                      child: Text(
                          'View Details',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0A2C59),
                        ),
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }

  void _viewAnnouncementModal(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            width: 320,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                 Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text('Barangay Cleanup Drive',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                Container(
                  margin: EdgeInsets.only(top: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Time&Date: 8:00 AM - 12:00 PM June 13, 2024',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Subject: Community Cleanup',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Details: Join us for a community cleanup drive to keep our barangay clean and green. Volunteers are welcome!',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                ),
                ),
                 SizedBox(height: 20),
                Container(
                margin:  EdgeInsets.fromLTRB(0, 5, 0, 15),
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Announcement()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    'Close',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A2C59),
                ),
                ),
                ),
              ],
              ),  
            ),
          ),
        );
      },
    );
  }
}
