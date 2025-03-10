import 'package:flutter/material.dart';
import 'package:fruit_hub/widgets/bottomCards.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.deepOrangeAccent,
              dividerColor: Colors.transparent,
              labelStyle: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              tabs: [
                Tab(text: 'Hottest'),
                Tab(text: 'Popular'),
                Tab(text: 'New Combo'),
                Tab(text: 'Top'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // hottest tab
                        SecondCards(
                          imagePath: 'images/3.png',
                          label: 'Quinoa fruit salad',
                          price: '₦ 12,000',
                          backgroundC: Colors.yellow.shade50,
                        ),
                        SecondCards(
                          imagePath: 'images/4.png',
                          label: 'Tropical fruit salad',
                          price: '₦ 10,000',
                          backgroundC: Colors.pink.shade50,
                        ),
                        SecondCards(
                          imagePath: 'images/5.png',
                          label: 'Melon fruit salad',
                          price: '₦ 10,000',
                          backgroundC: Colors.deepPurple.shade50,
                        ),
                      ],
                    ),
                  ),

                  //other tabs
                  Center(
                    child: Text("Popular Content"),
                  ),
                  Center(
                    child: Text("New Combo Content"),
                  ),
                  Center(
                    child: Text("Top Content"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
