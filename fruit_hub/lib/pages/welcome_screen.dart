import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/auth_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                "Get The Freshest Salad Combo",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We deliver the best and freshest fruit salad in town. Order for a combo today!!",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AuthScreen()),
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
                child: Text("Let's Continue"),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Center(
              child: Image.asset(
                "images/w-img.png",
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
