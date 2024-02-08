import 'package:flutter/material.dart';
import 'package:untitled/features/product_type/view/widget/product_type_view_body.dart';
class ProductTypeView extends StatelessWidget {
  const ProductTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductTypeViewBody(),
    );
  }
}