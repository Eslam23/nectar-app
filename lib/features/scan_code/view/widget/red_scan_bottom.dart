import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../../../../utilies/color_data.dart';
class RedScanBottom extends StatefulWidget {
  const RedScanBottom({Key? key}) : super(key: key);

  @override
  State<RedScanBottom> createState() => _RedScanBottomState();
}

class _RedScanBottomState extends State<RedScanBottom> {

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: MediaQuery.of(context).size.width *.14,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height *.005,
          bottom: MediaQuery.of(context).size.height *.005,
          right: 0,
          left: 0,
          child: CircleAvatar(
            backgroundColor: ColorsData.basicColor.withOpacity(.7),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: MediaQuery.of(context).size.height *.018,
          bottom: MediaQuery.of(context).size.height *.018,
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFFFF0000), shape: BoxShape.circle),
            child: Center(
              child: Image.asset(
                'asset/account/Group 6903.png',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * .09,
                height: MediaQuery.of(context).size.height * .07,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
