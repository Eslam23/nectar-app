import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/shop/view/widget/shop_view_body.dart';
class ShopView extends StatelessWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: ShopViewBody(),
      ),
    );
  }
}
