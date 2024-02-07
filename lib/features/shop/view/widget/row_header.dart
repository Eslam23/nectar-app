import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class RowHeader extends StatelessWidget {
  final String txtHeader;
  final String seeAll;
  const RowHeader ({Key? key, required this.txtHeader, required this.seeAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(txtHeader,style: TextStyle(fontSize: 22,fontFamily: 'Gilroy',fontWeight: FontWeight.w500),),
        Text('See all',style: TextStyle(fontSize: 14,fontFamily: 'Gilroy',fontWeight: FontWeight.w500,color: ColorsData.basicColor),),
      ],
    );

  }
}
