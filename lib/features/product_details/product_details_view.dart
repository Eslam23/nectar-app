import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/view/widget/product_details_view_body.dart';
class ProductDetailsView extends StatelessWidget {


  const ProductDetailsView({Key? key,required this.name,required this.price,required this.size }) : super(key: key);
  final String name;
  final String size;
  final  num price;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProductDetailsViewBody(name: name, price: price, size: size,),
    );
  }
}
