// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/completeOrder.dart';
import 'package:fruit_hub/pages/inputCardModal.dart';
// import 'package:fruit_hub/pages/inputCardModal.dart';
// import 'package:fruit_hub/pages/inputCardScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteDetailsModal extends StatelessWidget {
  const CompleteDetailsModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Delivery address",
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
                  hintText: 'East Legon, Accra',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "Number we can call",
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
                  hintText: '059 149 0038',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompleteOrder(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color.fromRGBO(255, 164, 81, 1.0),
                      ),
                      minimumSize: Size(150, 70),
                      backgroundColor: Colors.white,
                      foregroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Pay on delivery"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return InputCardModal();
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color.fromRGBO(255, 164, 81, 1.0),
                        ),
                        minimumSize: Size(150, 70),
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text("Pay with card"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
