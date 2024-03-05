import 'package:flutter/material.dart';
import 'package:untitled/features/sign_with/view/widget/sign_with_view_body.dart';

class SignWithView extends StatefulWidget {
  const SignWithView({Key? key}) : super(key: key);

  @override
  State<SignWithView> createState() => _SignWithViewState();
}

class _SignWithViewState extends State<SignWithView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignWithViewBody(),
    );
  }
}
