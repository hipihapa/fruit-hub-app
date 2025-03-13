// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_hub/components/smallFields.dart';
import 'package:fruit_hub/pages/completeOrder.dart';
import 'package:google_fonts/google_fonts.dart';

class InputCardModal extends StatelessWidget {
  const InputCardModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Card Holders Name",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 30),
              child: TextField(
                cursorColor: Colors.black87,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[100]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[100]!),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Adolphus Chris',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Card Number",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 30),
                  child: TextField(
                    cursorColor: Colors.black87,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[100]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[100]!),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: '1234 5678 9012',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                // date and ccv
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Smallfields(label: "Date", hint: "10/30"),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Smallfields(label: "CCV", hint: "123"),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompleteOrder(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(
                    //   color: Color.fromRGBO(255, 164, 81, 1.0),
                    // ),
                    minimumSize: Size(400, 70),
                    backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Complete Order"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
