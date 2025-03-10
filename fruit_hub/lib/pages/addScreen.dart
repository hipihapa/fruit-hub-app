// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/authScreen.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:fruit_hub/pages/homeScreen.dart';
// import 'package:google_fonts/google_fonts.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AuthScreen(),
              ),
            );
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),

      // alt main body
      bottomNavigationBar: Container(
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Quinoa Fruit Salad",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(246, 220, 192, 1),
                ),
                child: Icon(
                  Icons.minimize,
                  // color: Color.fromRGBO(240, 134, 38, 1.0),
                ),
              ),
            ],
          ),
        ),
      ),

      // orange bg
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image.asset(
                "images/addTo.png",
                width: 220,
                height: 220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
