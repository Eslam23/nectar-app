import 'package:flutter/material.dart';
import 'package:untitled/features/welcome_screen/view/widget/prev_column.dart';


class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asset/81401.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
       const PrevColumn(),

      ],
    );
  }
}
