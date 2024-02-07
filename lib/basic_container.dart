import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

import 'features/sign_with/sign_with_view.dart';
class BasicContainer extends StatelessWidget {
  final double wid;
  final double heig;
  final Function() fun;
  final EdgeInsets edgeInsets;
  final String txtButton;
  const BasicContainer({Key? key, required this.wid, required this.heig, required this.fun, required this.edgeInsets, required this.txtButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: fun,
      child: Container(
        margin: edgeInsets,
        width: wid,
        height: heig,
        decoration: BoxDecoration(
          color: ColorsData.basicColor,
          borderRadius: BorderRadius.circular(19),
        ),
        child:  Center(
          child: Text(txtButton,style: const TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}
