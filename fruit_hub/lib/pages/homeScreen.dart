// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_hub/widgets/customTab.dart';
import 'package:fruit_hub/widgets/topCards.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu_rounded),
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 140),
            child: Text(
              'Hello Tony, What fruit salad combo do you want today?',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: TextField(
                    cursorColor: Colors.black54,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 6.0, top: 4),
                        child: Icon(Icons.search),
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[50]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[50]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search for fruit and salad combos',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Image.asset(
                  'images/filter.png',
                  color: Colors.black,
                  width: 26,
                  height: 17,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Text(
                'Recommended Combo',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: SizedBox(
              height: 220,
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FirstCards(
                        imagePath: 'images/1.png',
                        label: 'Honey lime combo',
                        price: '₦ 2,000',
                      ),
                      FirstCards(
                        imagePath: 'images/2.png',
                        label: 'MangoBerry delight',
                        price: '₦ 8,000',
                      ),
                      FirstCards(
                        imagePath: 'images/2.png',
                        label: 'Berry mango combo ',
                        price: '₦ 4,000',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // custom tabbar
          Expanded(
            child: CustomTabBar(),
          ),
        ],
      ),
    );
  }
}
