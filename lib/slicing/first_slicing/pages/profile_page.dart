import 'package:first_flutter_project/slicing/first_slicing/section/header_profile_section.dart';
import 'package:first_flutter_project/slicing/first_slicing/section/item_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: GoogleFonts.poppins(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const HeaderProfile(),
            const SizedBox(
              height: 28,
            ),
            ItemProfile(
              title: 'My Orders',
              subtitle: 'Already have 12 orders...',
            ),
            ItemProfile(
              title: 'Shipping Address',
              subtitle: '3 Addresses',
            ),
            ItemProfile(
              title: 'Payment Methods',
              subtitle: 'Visa **34',
            ),
            ItemProfile(
              title: 'Promocodes',
              subtitle: 'You have special promocodes',
            ),
            ItemProfile(
              title: 'My Reviews',
              subtitle: 'Reviews for 4 items',
            ),
            ItemProfile(
              title: 'Settings',
              subtitle: 'Notifications, password',
            ),
          ],
        ),
      ),
    );
  }
}
