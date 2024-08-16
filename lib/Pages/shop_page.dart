import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sahara/classs/shop.dart';
import 'package:sahara/util/appbar.dart';
import 'package:sahara/util/product_tile.dart';
import 'package:sahara/util/sidemenu.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.read<Shop>().shop;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Row(
        children: [
          const Sidemenu(), // Side menu on the left
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  "Products",
                  style: GoogleFonts.cormorantGaramond(fontSize: 84),
                  textAlign: TextAlign.left,
                ),
                Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, // 3 items per row
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.50, // Adjust the aspect ratio as needed
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300), // Animation duration
                          curve: Curves.easeInOut, // Animation curve
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15), // Border radius
                          ),
                          child: ProductTile(product: product),
                        );
                      },
                    ),
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
