import 'package:flutter/material.dart';
import 'package:sahara/classs/product.dart';

class Cart extends ChangeNotifier {
  // List to hold cart items
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  // Method to add a product to the cart
  void addItemToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  // Method to remove a product from the cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // Method to calculate the total price of the cart items
  String calculateTotal() {
    double totalPrice = 0;
    for (var item in _cartItems) {
      totalPrice += item.price;
    }
    return totalPrice.toStringAsFixed(2);
  }
}