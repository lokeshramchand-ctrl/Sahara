import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sahara/Pages/cart_page.dart';
import 'package:sahara/Pages/our_craft.dart';
import 'package:sahara/Pages/shop_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShopPage()),
              );
            },
            child: Text(
              'Shop All',
              style: GoogleFonts.cormorantGaramond(
                color: const Color(0xFFFFD700),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OurCraft()),
              );
            },
            child: Text(
              'Contact',
              style: GoogleFonts.cormorantGaramond(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
            },
            child: Text(
              'Craft',
              style: GoogleFonts.cormorantGaramond(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize:24, 
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigate to Contact page
            },
            child: Text(
              'Gift Card',
              style: GoogleFonts.cormorantGaramond(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),

        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        const SizedBox(width: 20),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          },
          icon: const Icon(Icons.shopping_cart),
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0); // Adjust height as needed
}
