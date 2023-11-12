import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  //products for sale
  final List<Product> _shop = [
    //product 1:
    Product(name: 'Product 1', price: 99, description: 'Item description'),
    //product 2
    Product(name: 'Product 2', price: 99, description: 'Item description'),
    //product 3
    Product(name: 'Product 3', price: 99, description: 'Item description'),
    //product 4
    Product(name: 'Product 4', price: 99, description: 'Item description'),
  ];
  //user cart (At the beginning it has to be a empty cart)
  List<Product> _cart = [];
  //get product list (when you're anywhere arung shop you need to access (get) the shop item )
  List<Product> get shop => _shop;
  //get user cart (when you're anywhere arung shop you need to access (get) the cart item )
  List<Product> get cart => _cart;
  //adding items to the cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove items from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
