import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemProfile extends StatelessWidget {
  String? title;
  String? subtitle;

  ItemProfile({
    super.key,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$title',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),

              Text(
                '$subtitle',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff9B9B9B)
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.arrow_forward_ios),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}