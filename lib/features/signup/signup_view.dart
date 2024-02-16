import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/signup/view/widget/signup_view_body.dart';
class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: SignupViewBody(),
      ),
    );
  }
}
