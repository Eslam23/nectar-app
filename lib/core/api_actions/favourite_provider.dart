import 'package:flutter/material.dart';

import 'models.dart';

class FavouriteProvider extends ChangeNotifier{
  final List<Products> _favouriteProduct=[];
  List<Products> get favouriteProduct => _favouriteProduct ;
  addFavoriteProduct(Products products){
    if(favouriteProduct.isNotEmpty){
      bool check=_favouriteProduct.any((prod) => prod.title == products.title );
      if(check == false){
        _favouriteProduct.add(products);
      }
    }else{
      _favouriteProduct.add(products);
    }


    notifyListeners();
  }
  deleteFavouriteProduct(Products products){
    _favouriteProduct.remove(products);
    notifyListeners();
  }
}