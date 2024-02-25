import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/digit_code/digit_code_view.dart';
import 'package:untitled/features/mobile_number/view/widget/mobile_number_view_body.dart';
import 'package:untitled/utilies/color_data.dart';
class MobileNumberView extends StatelessWidget {
  const MobileNumberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: GestureDetector(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const DigitCodeView()));},
        child: Container(
          width: MediaQuery.of(context).size.width *.15,
          height: MediaQuery.of(context).size.height *.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsData.basicColor,
          ),
          child:const Center(
            child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),
          ),
        ),
      ),
      body:const MobileNumberViewBody(),
    );
  }
}
