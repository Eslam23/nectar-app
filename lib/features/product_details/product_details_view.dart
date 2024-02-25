import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/view/widget/product_details_view_body.dart';

import '../../core/api_actions/models.dart';
class ProductDetailsView extends StatelessWidget {
  final Products products;


  const ProductDetailsView({Key? key, required this.products }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProductDetailsViewBody(products: products,),
    );
  }
}
