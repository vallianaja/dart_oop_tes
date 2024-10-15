import 'package:first_flutter_project/slicing/first_slicing/pages/bag_page.dart';
import 'package:first_flutter_project/slicing/first_slicing/pages/favorite_page.dart';
import 'package:first_flutter_project/slicing/first_slicing/pages/home_page.dart';
import 'package:first_flutter_project/slicing/first_slicing/pages/profile_page.dart';
import 'package:first_flutter_project/slicing/first_slicing/pages/shop_cart.dart';
import 'package:first_flutter_project/slicing/first_slicing/section/header_profile_section.dart';
import 'package:first_flutter_project/slicing/first_slicing/section/icon.dart';
import 'package:first_flutter_project/slicing/first_slicing/section/item_profile_section.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const ShopPage(),
    const BagPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ))
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 20,
              spreadRadius: 5,
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0, -4))
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    homeIcon,
                    colorFilter: ColorFilter.mode(currentIndex == 0 ? Colors.blueGrey : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    cartIcon,
                    colorFilter: ColorFilter.mode(currentIndex == 1 ? Colors.blueGrey : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    bagIcon,
                    colorFilter: ColorFilter.mode(currentIndex == 2 ? Colors.blueGrey : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Bag'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    favoriteIcon,
                    colorFilter: ColorFilter.mode(currentIndex == 3 ? Colors.blueGrey : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: SvgPicture.string(
                    profileIcon,
                    colorFilter: ColorFilter.mode(currentIndex == 4 ? Colors.blueGrey : Colors.grey, BlendMode.srcIn),
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
