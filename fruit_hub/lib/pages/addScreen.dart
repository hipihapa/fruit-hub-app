// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/homeScreen.dart';
import 'package:fruit_hub/pages/orderlistScreen.dart';
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
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
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
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove),
                        style: IconButton.styleFrom(
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        style: IconButton.styleFrom(
                          backgroundColor: Color.fromRGBO(246, 220, 192, 1),
                          foregroundColor: Colors.deepOrangeAccent,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text(
                      "₦ 2,000",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Divider(
                height: 2,
                color: Colors.grey[300],
                thickness: 1,
                endIndent: 12,
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  Text(
                    "One Pack Contains:",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    child: Container(
                      width: 400,
                      height: 2,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 31.0, top: 14),
                child: Text(
                  "Red Quinoa,Lime,Honey,Blueberries,Strawberries,Mango,Fresh Mint",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                height: 2,
                color: Colors.grey[300],
                thickness: 1,
                endIndent: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 31.0, top: 14),
                child: Text(
                  "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.deepOrangeAccent,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: Color.fromRGBO(246, 220, 192, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 31.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderListScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 70),
                        backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Add to basket"),
                    ),
                  ),
                ],
              )
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
