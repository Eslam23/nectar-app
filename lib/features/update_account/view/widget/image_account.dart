import 'package:flutter/material.dart';

class ImageAccount extends StatelessWidget {
  const ImageAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asset/account/Frame 18.png',
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .3,
      fit: BoxFit.contain,
    );
  }
}
