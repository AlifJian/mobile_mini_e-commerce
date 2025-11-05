import 'package:flutter/material.dart';
import 'package:tugas_kelompok/models/product.dart';

class Shop extends ChangeNotifier{
  // Product for sale
  final List<Product> _shop = [
    // Product 1
    Product(name: "Tahu", price: 5000, description: "Tahu kuning anti jamur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla mauris in libero tempus, eget tristique felis luctus. Sed iaculis nibh ipsum, eu porttitor quam vehicula nec. Integer in purus lorem.", imagePath: "assets/images/tahu.jpg"),
    // Product 2
    Product(name: "Mie Goreng", price: 3500, description: "Mie goreng khas nusantara", imagePath: "assets/images/mie.jpg"),
    // Product 3
    Product(name: "Tempe", price: 5000, description: "Tempe asli palembang", imagePath: "assets/images/tempe.jpg"),
    // Product 4
    Product(name: "Pempek", price: 2000, description: "Pempek daging ikan paus", imagePath: "assets/images/pempek.jpg"),
  ];
  // user cart
  List<Product> _cart = [];
  // get product list
  List<Product> get shop => _shop;
  // get uesr cart
  List<Product> get cart => _cart;
  // add item to cart
  void addToCart (Product item)  {
    cart.add(item);
    notifyListeners();
  }
  // remove item from cart
  void removeFromCart(Product item)  {
    cart.remove(item);
    notifyListeners();
  }
}