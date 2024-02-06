import 'package:flutter/material.dart';

import '../../../../basic_container.dart';

class PrevColumn extends StatelessWidget {
  const PrevColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height *.01,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Image.asset(
            'asset/white.png',
            fit: BoxFit.cover,
            width: 48,
            height: 56,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.04,
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
            height: MediaQuery.of(context).size.height *.015,
          ),
         const Text(
            'Ger your groceries in as fast as one hour',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'fonts/Gilroy-Medium.ttf',
                color: Colors.grey),
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.05,),
          const BasicContainer(),
        ],
      ),
    );
  }
}