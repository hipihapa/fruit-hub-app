import 'package:flutter/material.dart';
import 'package:fruit_hub/components/timelineTile.dart';
import 'package:fruit_hub/pages/completeOrder.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:timeline_tile/timeline_tile.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

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
                builder: (context) => CompleteOrder(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Delivery Status",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 150.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 10),
        child: ListView(
          children: [
            // start timeline
            MyTimelineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              label: 'Order Taken',
              iconData: Icons.note_alt_outlined,
            ),

            // middle timeline
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              label: 'Order is been prepared',
              iconData: Icons.takeout_dining,
            ),

            // 2nd middle timeline
            MyTimelineTile(
              isFirst: false,
              isLast: false,
              isPast: false,
              label: 'Order is been delivered. Your delivery agent is coming',
              iconData: Icons.delivery_dining_outlined,
            ),

            // end timeline
            MyTimelineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              label: 'Order Recieved',
              iconData: Icons.done,
            ),
          ],
        ),
      ),
    );
  }
}
