import 'package:flutter/cupertino.dart';
import 'package:untitled/core/api_actions/category/get_method.dart';

import 'models.dart';

class ProviderCategories extends ChangeNotifier{
  List<Categories> _category=[];
  List<Categories> get category => _category ;
  Future<void> fetchAllCategory ()async{
    notifyListeners();
    final res= await fetchCategory();
    _category=res;
    notifyListeners();
  }
}