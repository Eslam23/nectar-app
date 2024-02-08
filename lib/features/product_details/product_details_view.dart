import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/view/widget/product_details_view_body.dart';
class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductDetailsViewBody(),
    );
  }
}
