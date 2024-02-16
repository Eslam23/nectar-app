import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/explore/view/widget/explore_view_body.dart';
class ExploreView extends StatelessWidget {
  const ExploreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: ExploreViewBody(),
      ),
    );
  }
}
