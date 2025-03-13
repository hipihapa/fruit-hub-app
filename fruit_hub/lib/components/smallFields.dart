// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Smallfields extends StatelessWidget {
  final String label;
  final String hint;

  const Smallfields({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14.0),
          child: Text(
            // "Card Number",
            label,
            style: GoogleFonts.poppins(
              fontSize: 14,
            ),
          ),
        ),
        TextField(
          cursorColor: Colors.black87,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade300,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[100]!),
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[100]!),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.grey.shade500,
            ),
            // '1234 5678 9012',
          ),
        ),
      ],
    );
  }
}
