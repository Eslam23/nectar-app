import "package:flutter/material.dart";
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:untitled/features/welcome_screen/welcome_view.dart';
import 'package:untitled/utilies/color_data.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('asset/Group1.png',fit: BoxFit.contain,width: 200,height: 100,),
      logoWidth: 200,
      navigator:const WelcomeView(),
      showLoader: false,
      backgroundColor: ColorsData.basicColor,
      durationInSeconds: 2,
    );
  }
}
