import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'KKProfiling.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTopBar(),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 15, left: 25),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    'Announcements',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              // Profile Card with image
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
                        Container(child: Container(child: Text('06-13-24'))),
                        Container(child: Container(child: Text('Community Cleanup'))),
                      ],
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('View Details'),
                    ),
                  ),
                ],
              ),
              ),
              
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Top Navigation Bar
  Widget _buildTopBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/logo.jpg', width: 40, height: 40),
              ),
              const SizedBox(width: 10),
              const Text(
                "SK-INSIGHT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                  fontFamily: 'Poppins',
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
            onSelected: (value) {
              if (value == 'educational') {
                print("Educational Assistance");
              } else if (value == 'profiling') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Kkprofiling()),
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
          const Row(
            children: [
              Icon(Icons.person, color: Colors.white),
              SizedBox(width: 10),
              Icon(Icons.notifications, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
