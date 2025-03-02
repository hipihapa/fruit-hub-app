import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
      bottomNavigationBar: Container(
        height: 380,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            left: 15.0,
            right: 15.0,
            bottom: 15.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What is your first name?",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              TextField(
                cursorColor: Colors.black38,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[50]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[50]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Tony',
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(600, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                  foregroundColor: Colors.white,
                ),
                child: Text("Start Ordering"),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                "images/auth-img.png",
                width: 301,
                height: 260,
              ),
            ),
          ),
          SizedBox(height: 10),
          Image.asset(
            "images/shd.png",
            width: 301,
            height: 12,
          )
        ],
      ),
    );
  }
}
