import 'package:flutter/material.dart';

import 'models.dart';

class FavouriteProvider extends ChangeNotifier{
  final List<Products> _favouriteProduct=[];
  List<Products> get favouriteProduct => _favouriteProduct ;
  addFavoriteProduct(Products products){
    _favouriteProduct.add(products);
    notifyListeners();
  }
  deleteFavouriteProduct(Products products){
    _favouriteProduct.remove(products);
    notifyListeners();
  }
}