import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/features/shop/view/widget/shop_view_body.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../core/api_actions/models.dart';

class ShopView extends StatefulWidget {
  final Products products;
  final int? currentPageByIndex;
  const ShopView({
    Key? key,
    this.currentPageByIndex,
    required this.products,
  }) : super(key: key);

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  // @override
  // void initState() {
  //   WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //     Future.delayed(Duration.zero, () => showAlert(context));
  //   });
  //   super.initState();
  // }

  // final keyIsFirstLoaded = 'is_first_loaded';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return exit(0);
      },
      child: Scaffold(
        body: ShopViewBody(
          products: widget.products,
        ),
      ),
    );
  }
}
