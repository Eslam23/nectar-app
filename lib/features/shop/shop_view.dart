import 'package:flutter/material.dart';
import 'package:untitled/features/shop/view/widget/shop_view_body.dart';
class ShopView extends StatelessWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ShopViewBody(),
    );
  }
}
