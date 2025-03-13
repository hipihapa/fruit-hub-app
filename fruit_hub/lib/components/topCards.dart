import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstCards extends StatelessWidget {
  final String imagePath;
  final String label;
  final String price;

  const FirstCards({
    super.key,
    required this.imagePath,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Container(
          width: 152,
          height: 183,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0, top: 4),
                  child: Icon(
                    Icons.favorite_border,
                    color: Color.fromRGBO(240, 134, 38, 1.0),
                  ),
                ),
              ),
              Image.asset(
                imagePath,
                width: 80,
                height: 80,
              ),
              SizedBox(height: 4),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromRGBO(240, 134, 38, 1.0),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(249, 238, 226, 1),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color.fromRGBO(240, 134, 38, 1.0),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
