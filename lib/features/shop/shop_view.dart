import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/shop/view/widget/shop_view_body.dart';

import '../../core/api_actions/models.dart';
class ShopView extends StatelessWidget {
  final Products products;
  final int? currentPageByIndex;
  const ShopView({Key? key, this.currentPageByIndex, required this.products,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child:  Scaffold(
          body: ShopViewBody(products:  products,),
        ),

    );
  }
}
