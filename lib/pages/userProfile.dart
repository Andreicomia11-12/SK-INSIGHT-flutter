import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'package:skinsight/widgets/custom_navbar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1E1F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomNavBar(),

            // Title
            Container(
              margin: const EdgeInsets.only(top: 10, left: 25),
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'User Profile',
                  style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Profile image + card
            Stack(
              alignment: Alignment.topCenter,
              children: [
                // Card
                Container(
                  margin: const EdgeInsets.only(top: 60, left: 25, right: 25),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      Text('Test T. Tests', style: GoogleFonts.poppins(fontSize: 17)),
                      Text(
                        'test@example.com',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not Verified', style: GoogleFonts.poppins(fontSize: 12)),
                          const Icon(Icons.check_circle, color: Colors.grey, size: 20),
                        ],
                      ),
                      const SizedBox(height: 10),
                      _buildLabelValue('Full Name', 'Test T. Test'),
                      Row(
                        children: [
                          Expanded(child: _buildLabelValue('Age', '22')),
                          Expanded(child: _buildLabelValue('Gender', 'Male')),
                        ],
                      ),
                      _buildLabelValue('Youth Classification', 'In School Youth'),
                      _buildLabelValue('Civil Status', 'Single'),
                      _buildLabelValue('Purok', 'Purok 69'),
                    ],
                  ),
                ),

                // Profile Image
                Container(
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Verify
                  ElevatedButton(
                    onPressed: _showVerifyAccountModal,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: 2,
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                    child: Text('Verify Account', style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500)),
                  ),

                  // Logout
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                      );
                    },
                    icon: const Icon(Icons.logout, color: Colors.white),
                    label: Text('Log out',
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0A2C59),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildLabelValue(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
          const SizedBox(height: 4),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFE8E8E8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(value,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                )),
          ),
        ],
      ),
    );
  }

  void _showVerifyAccountModal() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const Text('Enter Your Email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email Address', border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) return 'Please enter your email';
                  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegex.hasMatch(value)) return 'Enter a valid email address';
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
                  child: const Text('Cancel', style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                      _showOTPModal();
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0A2C59)),
                  child: const Text('Send OTP', style: TextStyle(color: Colors.white)),
                ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }

  void _showOTPModal() {
    List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());
    List<TextEditingController> otpControllers = List.generate(6, (_) => TextEditingController());

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Text('Enter OTP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 35,
                  child: TextField(
                    controller: otpControllers[index],
                    focusNode: focusNodes[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(counterText: "", border: OutlineInputBorder()),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 5) {
                        focusNodes[index + 1].requestFocus();
                      } else if (value.isEmpty && index > 0) {
                        focusNodes[index - 1].requestFocus();
                      }
                    },
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
                child: const Text('Cancel', style: TextStyle(color: Colors.black)),
              ),
              ElevatedButton(
                onPressed: () {
                  String otp = otpControllers.map((e) => e.text).join();
                  if (otp.length == 6 && RegExp(r'^\d{6}$').hasMatch(otp)) {
                    Navigator.of(context).pop();
                    _showTYModal();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Enter a valid 6-digit OTP')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0A2C59)),
                child: const Text('Verify', style: TextStyle(color: Colors.white)),
              ),
            ]),
          ]),
        ),
      ),
    );
  }

  void _showTYModal() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: 220,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 50),
            const SizedBox(height: 20),
            const Text('Account Verification Successful',
                style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF0A2C59)),
              child: const Text('Ok', style: TextStyle(color: Colors.white)),
            ),
          ]),
        ),
      ),
    );
  }
}
