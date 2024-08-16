import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sahara/classs/product.dart';
import 'package:sahara/classs/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  void addToCart(BuildContext context) {
    final shop = context.read<Shop>();

    shop.addToCart(product);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('Successfully added to Cart',
            style: GoogleFonts.mulish(fontSize: 24)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(10),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white10,
              ),
              width: double.infinity,
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 50), // Adjust the gap between the image and the name
          Text(
            product.name,
            style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5), // Adjust the gap between the name and the description
          Text(
            product.description,
            style: GoogleFonts.mulish(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 10), // Adjust the gap between the description and the price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: GoogleFonts.mulish(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              IconButton(
                onPressed: () => addToCart(context),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          RatingBar(
                minRating: 1,
                maxRating: 5,
                initialRating: 3,
                allowHalfRating: true,
                ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: Colors.amber),
                  half: const Icon(Icons.star_half, color: Colors.amber),
                  empty: const Icon(Icons.star_outline, color: Colors.grey),
                ),
                onRatingUpdate: (rating) {
                  // Handle rating change
                },
              ),
        ],
      ),
    );
  }
}
