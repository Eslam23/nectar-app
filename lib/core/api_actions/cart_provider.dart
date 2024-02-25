import 'package:flutter/material.dart';

import 'models.dart';

class CartProvider extends ChangeNotifier {
  final List<Products> _cartProduct = [];
  List<Products> get cartProduct => _cartProduct;

  addProduct(Products products) {
    _cartProduct.add(products);
    notifyListeners();
  }

  incrementProdCartQuantitt(String title) {
    var prod = _cartProduct.firstWhere((e) => e.title == title);
    prod.quantity++;
    notifyListeners();
  }

  decrementProdCartQuantitt(String title) {
    var prod = _cartProduct.firstWhere((e) => e.title == title);
    prod.quantity--;
    notifyListeners();
  }

  addAllProduct(List<Products> products) {
    _cartProduct.addAll(products);
    notifyListeners();
  }

  deleteProduct(Products products) {
    _cartProduct.remove(products);
    notifyListeners();
  }

  int getCartAmount() {
    int cartAmount = 0;
    _cartProduct.forEach((prod) {
      cartAmount += prod.price! * prod.quantity;
    });
    return cartAmount;
  }
}
