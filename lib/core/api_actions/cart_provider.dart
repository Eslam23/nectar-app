import 'package:flutter/material.dart';

import 'models.dart';

class CartProvider extends ChangeNotifier {
  final List<Products> _cartProduct = [];
  List<Products> get cartProduct => _cartProduct;

  addProduct(Products products) {
    if(cartProduct.isNotEmpty){
       bool check= _cartProduct.any((element) => element.title! == products.title)   ;
      print('55555555');
      if(check == false){
        _cartProduct.add(products);
        print('111111111');
      }else{
       incrementProdCartQuantity(products.title!);
      }
    }else{
       _cartProduct.add(products);
     print(  _cartProduct.length);
       print('7777777777');
    }
    notifyListeners();
  }

  incrementProdCartQuantity(String title) {
    var prod = _cartProduct.firstWhere((e) => e.title == title);
    prod.quantity++;
    notifyListeners();
  }

  decrementProdCartQuantity(String title) {
    var prod = _cartProduct.firstWhere((e) => e.title == title);
    prod.quantity--;
    notifyListeners();
  }


  deleteProduct(Products products) {
    _cartProduct.remove(products);
    notifyListeners();
  }

  int getCartAmount() {
    int cartAmount = 0;
    _cartProduct.forEach((prod) {
      cartAmount += prod.newPrice! * prod.quantity;
    });
    return cartAmount;
  }
 /* String getOneCart(){
    String oneCart='';
    _cartProduct.forEach((prod) {
      oneCart +=prod.title!;
    });
    return oneCart;
}*/
}
