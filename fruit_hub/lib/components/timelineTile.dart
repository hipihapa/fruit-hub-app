// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String label;
  final IconData iconData;

  const MyTimelineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.label,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        endChild: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 40),
          child: Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
        ),
        // decorate the lines
        beforeLineStyle: LineStyle(
          color:
              isPast ? Colors.grey.shade500 : Color.fromRGBO(255, 164, 81, 1.0),
          thickness: 2,
        ),
        indicatorStyle: IndicatorStyle(
          width: 45,
          color:
              isPast ? Colors.grey.shade500 : Color.fromRGBO(255, 164, 81, 1.0),
          iconStyle: IconStyle(
            color: Colors.white,
            iconData: iconData,
          ),
        ),
      ),
    );
  }
}
