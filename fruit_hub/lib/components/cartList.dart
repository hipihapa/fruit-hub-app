import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderList extends StatelessWidget {
  final String imagePath;
  final String label;
  final String getters;
  final String price;
  final Color backgroundC;

  const OrderList({
    super.key,
    required this.imagePath,
    required this.label,
    required this.getters,
    required this.price,
    required this.backgroundC,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 18.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: backgroundC,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    imagePath,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(getters),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Text(
                  price,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
