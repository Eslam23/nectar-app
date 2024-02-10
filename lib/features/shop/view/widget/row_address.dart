import 'package:flutter/material.dart';
class RowAddress extends StatelessWidget {
  const RowAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.place_rounded,
          size: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .01,
        ),
        const Text(
          'Dhaka, Banassre',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Gilroy'),
        ),
      ],
    );
  }
}
