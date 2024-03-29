import 'package:flutter/material.dart';
import 'package:untitled/features/mobile_number/mobile_number_view.dart';
import 'package:untitled/features/sign_with/sign_with_view.dart';
import 'package:untitled/tab_screen.dart';

import '../../../../basic_container.dart';
import '../../../../carrot_image.dart';

class PrevColumn extends StatelessWidget {
  const PrevColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .01,
      left: 0,
      right: 0,
      child: Column(
        children: [
          CarrotImage(
            wid: MediaQuery.of(context).size.width * .3,
            heig: MediaQuery.of(context).size.width * .15,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          const Text(
            'Welcome\nto our store',
            style: TextStyle(
              fontSize: 44,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontFamily: 'Gilroy',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .015,
          ),
          const Text(
            'Ger your groceries in as fast as one hour',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'fonts/Gilroy-Medium.ttf',
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          BasicContainer(
            wid: MediaQuery.of(context).size.width * .84,
            heig: MediaQuery.of(context).size.height * .09,
            fun: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignWithView()));
            },
            edgeInsets: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * .02),
            txtButton: 'Get Started',
          ),
        ],
      ),
    );
  }
}
