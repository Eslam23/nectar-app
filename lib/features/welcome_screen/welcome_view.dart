import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/welcome_screen/view/widget/welcome_view_body.dart';
class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return exit(0);
      },
      child: const Scaffold(
        body: WelcomeViewBody(),
      ),
    );
  }
}
