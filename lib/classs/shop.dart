import 'package:flutter/material.dart';
import 'package:sahara/classs/product.dart';

class Shop extends ChangeNotifier {
  // List to hold shop items
  final List<Product> _shop = [
    Product(
      name: "Haven",
      price: 16.99,
      description: "Experience ultimate comfort and style.",
      imagePath: 'assets/7.png',
    ),
    Product(
      name: "Lumina",
      price: 19.99,
      description: "Brighten your day with Lumina.",
      imagePath: 'assets/8.jpeg',
    ),
    Product(
      name: "Serenity",
      price: 22.49,
      description: "Find peace with Serenity.",
      imagePath: 'assets/9.jpeg',
    ),
    Product(
      name: "Eclipse",
      price: 24.99,
      description: "A bold statement for your lifestyle.",
      imagePath: 'assets/11.jpeg',
    ),
    Product(
      name: "Aurora",
      price: 18.99,
      description: "Capture the magic of the Aurora.",
      imagePath: 'assets/12.jpeg',
    ),
    Product(
      name: "Nebula",
      price: 27.99,
      description: "Explore the depths of Nebula.",
      imagePath: 'assets/13.jpeg',
    ),
    Product(
      name: "Zenith",
      price: 29.99,
      description: "Reach new heights with Zenith.",
      imagePath: 'assets/14.jpeg',
    ),
    Product(
      name: "Vortex",
      price: 31.99,
      description: "Get swept away by the Vortex.",
      imagePath: 'assets/15.jpeg',
    ),
    Product(
      name: "Pulse",
      price: 17.99,
      description: "Feel the rhythm with Pulse.",
      imagePath: 'assets/16.jpeg',
    ),
    Product(
      name: "Echo",
      price: 23.49,
      description: "Let your style resonate with Echo.",
      imagePath: 'assets/17.jpeg',
    ),
    Product(
      name: "Fusion",
      price: 25.99,
      description: "Where tradition meets innovation.",
      imagePath: 'assets/18.jpeg',
    ),
    Product(
      name: "Radiance",
      price: 28.49,
      description: "Shine bright with Radiance.",
      imagePath: 'assets/19.jpeg',
    ),
    Product(
      name: "Nova",
      price: 30.99,
      description: "A burst of energy and light.",
      imagePath: 'assets/20.jpeg',
    ),
    Product(
      name: "Solstice",
      price: 32.99,
      description: "Celebrate every moment with Solstice.",
      imagePath: 'assets/21.jpeg',
    ),
    Product(
      name: "Mirage",
      price: 26.99,
      description: "An illusion of beauty and grace.",
      imagePath: 'assets/22.jpeg',
    ),
    Product(
      name: "Prism",
      price: 21.99,
      description: "Reflect your true colors with Prism.",
      imagePath: 'assets/23.jpeg',
    ),
    Product(
      name: "Odyssey",
      price: 34.49,
      description: "Embark on a journey with Odyssey.",
      imagePath: 'assets/24.jpeg',
    ),
    Product(
      name: "Cascade",
      price: 29.49,
      description: "Flow with elegance and grace.",
      imagePath: 'assets/25.jpeg',
    ),
    Product(
      name: "Ember",
      price: 33.49,
      description: "Ignite your passion with Ember.",
      imagePath: 'assets/26.jpeg',
    ),
    Product(
      name: "Bliss",
      price: 19.49,
      description: "Find your happy place with Bliss.",
      imagePath: 'assets/27.jpeg',
    ),
    Product(
      name: "Aura",
      price: 22.99,
      description: "Surround yourself with Aura.",
      imagePath: 'assets/28.jpeg',
    ),
    Product(
      name: "Zephyr",
      price: 31.49,
      description: "A gentle breeze in your life.",
      imagePath: 'assets/29.jpeg',
    ),
    Product(
      name: "Horizon",
      price: 27.49,
      description: "Expand your view with Horizon.",
      imagePath: 'assets/30.jpeg',
    ),
    Product(
      name: "Pulse",
      price: 24.49,
      description: "Keep the beat with Pulse.",
      imagePath: 'assets/31.jpeg',
    ),
    Product(
      name: "Spectra",
      price: 28.99,
      description: "See the world in full color.",
      imagePath: 'assets/32.jpeg',
    ),
    Product(
      name: "Echo",
      price: 26.49,
      description: "Let your style resonate.",
      imagePath: 'assets/33.jpeg',
    ),
    Product(
      name: "Lush",
      price: 21.49,
      description: "Indulge in luxury with Lush.",
      imagePath: 'assets/34.jpeg',
    ),
    Product(
      name: "Vista",
      price: 23.99,
      description: "A window to new possibilities.",
      imagePath: 'assets/35.jpeg',
    ),
    Product(
      name: "Quasar",
      price: 29.99,
      description: "A powerhouse of energy.",
      imagePath: 'assets/36.jpeg',
    ),
    Product(
      name: "Reverie",
      price: 32.49,
      description: "Dream big with Reverie.",
      imagePath: 'assets/37.jpeg',
    ),
    Product(
      name: "Celeste",
      price: 25.49,
      description: "Heavenly elegance in your hands.",
      imagePath: 'assets/38.jpeg',
    ),
    Product(
      name: "Elysium",
      price: 34.99,
      description: "Experience pure bliss.",
      imagePath: 'assets/39.jpeg',
    ),
    Product(
      name: "Serenade",
      price: 18.49,
      description: "A melody of style and grace.",
      imagePath: 'assets/40.jpeg',
    ),
    Product(
      name: "Solace",
      price: 22.49,
      description: "Find comfort and peace with Solace.",
      imagePath: 'assets/41.jpeg',
    ),
    Product(
      name: "Nimbus",
      price: 26.99,
      description: "A cloud of elegance and comfort.",
      imagePath: 'assets/42.jpeg',
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  // Method to add a product to the cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // Method to remove a product from the cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  // Method to add products to the shop
  void addProductToShop(Product product, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _shop.add(product);
    }
    notifyListeners();
  }

  // Method to calculate total price of items in cart
  double calculateTotal() {
    double total = 0.0;
    for (var product in _cart) {
      total += product.price;
    }
    return total;
  }
}
