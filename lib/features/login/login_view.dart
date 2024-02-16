import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/login/view/widget/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}
