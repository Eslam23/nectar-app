import 'package:flutter/cupertino.dart';
import 'package:untitled/core/api_actions/offer/get_method.dart';

import 'model.dart';

class ProviderOffer extends ChangeNotifier{
  List<Offers> _offer=[];
  List<Offers> get offer => _offer;
  Future<void> getAllOffers()async{
    notifyListeners();
  final  response= await fetchOffer();
  _offer=response;
  notifyListeners();
  }
}