import 'package:flutter/material.dart';
import 'package:untitled/features/splash_screen/view/widget/splash_view_body.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
