import 'package:flutter/material.dart';
import 'package:fruit_hub/pages/addScreen.dart';
import 'package:fruit_hub/pages/completeDetailsModal.dart';
import 'package:fruit_hub/components/cartList.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => AddToCart(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: Text(
          "My Basket",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 150.0,
      ),
      body: Column(
        children: [
          OrderList(
            imagePath: 'images/3.png',
            label: 'Qunioa fruit salad',
            getters: '2packs',
            price: '₦ 20,000',
            backgroundC: Colors.blue.shade50,
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
            endIndent: 12,
          ),
          OrderList(
            imagePath: 'images/4.png',
            label: 'Melon fruit salad',
            getters: '5packs',
            price: '₦ 50,000',
            backgroundC: Colors.deepPurple.shade50,
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
            endIndent: 12,
          ),
          OrderList(
            imagePath: 'images/5.png',
            label: 'Tropical fruit salad',
            getters: '3packs',
            price: '₦ 30,000',
            backgroundC: Colors.pink.shade50,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "₦ 100,000",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return CompleteDetailsModal();
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 70),
                      backgroundColor: Color.fromRGBO(255, 164, 81, 1.0),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text("Checkout"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
