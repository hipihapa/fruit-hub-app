import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/homeScreen.dart';
import 'package:fruit_hub/pages/trackOrder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // lottie animation
          Lottie.asset(
            "lottie/check.json",
            width: 300,
            height: 300,
            repeat: false,
          ),

          SizedBox(height: 30),
          // texts
          Text(
            "Congratulations!!!",
            style: GoogleFonts.poppins(
              fontSize: 30,
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 80.0),
              child: Text(
                "Your order has been taken and is been attended to...",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => TrackOrder(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(160, 70),
              backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text("Track order"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              side: BorderSide(
                color: Color.fromRGBO(255, 164, 81, 1.0),
              ),
              minimumSize: Size(200, 70),
              backgroundColor: Colors.white,
              foregroundColor: Color.fromRGBO(255, 164, 81, 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text("Continue shopping"),
          ),
        ],
      ),
    );
  }
}
