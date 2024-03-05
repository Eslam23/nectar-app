
import 'package:flutter/material.dart';
import 'package:untitled/features/explore/view/widget/explore_view_body.dart';


class ExploreView extends StatelessWidget {
  final int? currentPageByIndex;
  const ExploreView({Key? key, this.currentPageByIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExploreViewBody(),
    );
  }
}
