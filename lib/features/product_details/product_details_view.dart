import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/view/widget/product_details_view_body.dart';
class ProductDetailsView extends StatelessWidget {
 /* final int id;*/

  const ProductDetailsView({Key? key, /*required this.id,*/ }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProductDetailsViewBody(/*id: id,*/),
    );
  }
}
