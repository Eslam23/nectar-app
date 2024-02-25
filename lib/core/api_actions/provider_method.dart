
import 'package:flutter/material.dart';
import 'package:untitled/core/api_actions/get_method.dart';

import 'models.dart';

class ProviderProduct extends ChangeNotifier{
  List<Products>  _products=[];
  List<Products> get products=>_products;
  Future<void> fetchAllProducts()async{
    notifyListeners();
    final response= await fetchData();
    _products=response;
    notifyListeners();
  }

  List<Products> getBestSellerProducts(){
    final  bestSellerProds = _products.where((prod) => prod.bestSelling == true).toList();
    return bestSellerProds;
  }
  List<Products> getExclusiveOffer(){
    final exploreOfferProds=_products.where((prod) =>prod.excuOffer == true ).toList();
    return exploreOfferProds;
  }
 }
