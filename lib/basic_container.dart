import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

import 'features/sign_with/sign_with_view.dart';
class BasicContainer extends StatelessWidget {
  /*final double wid;
  final double heig;*/
  const BasicContainer({Key? key, /*required this.wid, required this.heig*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SignWithView()));},
      child: Container(
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.02),
        width: MediaQuery.of(context).size.width *.84,
        height: MediaQuery.of(context).size.height *.09,
        decoration: BoxDecoration(
          color: ColorsData.basicColor,
          borderRadius: BorderRadius.circular(19),
        ),
        child: const Center(
          child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),),
        ),
      ),
    );
  }
}
