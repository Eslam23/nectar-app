import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/favourite/view/widget/favourite_view_body.dart';
class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body:FavouriteViewBody(),
      ),
    );
  }
}
