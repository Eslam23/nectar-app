import 'package:flutter/material.dart';
class CarrotImage extends StatelessWidget {
  final double wid;
  final double heig;
  const CarrotImage({Key? key, required this.wid, required this.heig}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Image.asset(
          'asset/Group.png',
          fit: BoxFit.contain,
          width: wid,
          height: heig,
        ));

  }
}
