import 'package:flutter/material.dart';
import 'package:untitled/features/signup/view/widget/signup_view_body.dart';
class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupViewBody(),
    );
  }
}
