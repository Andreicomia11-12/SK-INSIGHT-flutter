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
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  _buildAnnouncementCard(
                    context,
                    title: "Barangay Assembly",
                    content:
                    "There will be a barangay assembly on Saturday at 9AM. All SK members are encouraged to attend.",
                  ),
                  const SizedBox(height: 16),
                  _buildAnnouncementCard(
                    context,
                    title: "Educational Assistance",
                    content:
                    "Submit all requirements for educational assistance before the deadline on August 5.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnnouncementCard(BuildContext context, {required String title, required String content}) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: const Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0A2C59))),
              content: Text(content, style: const TextStyle(color: Color(0xFF0A2C59))),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close", style: TextStyle(color: Color(0xFF0A2C59))),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0A2C59),
                )),
            const SizedBox(height: 8),
            const Text("Tap to read more", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
