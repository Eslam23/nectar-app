import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/core/api_actions/models.dart';
import 'package:untitled/features/favourite/view/widget/favourite_view_body.dart';

class FavouriteView extends StatelessWidget {
  final List<Products> products;
  final int? currentPageByIndex;
  const FavouriteView({
    Key? key,
    this.currentPageByIndex,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavouriteViewBody(
        products: products,
      ),
    );
  }
}
