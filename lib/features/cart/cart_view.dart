
import 'package:flutter/material.dart';
import 'package:untitled/features/cart/view/widget/cart_view_body.dart';
class CartView extends StatelessWidget {

  final int? currentPageByIndex;
  const CartView({Key? key, this.currentPageByIndex,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CartViewBody(),
    );
  }
}
