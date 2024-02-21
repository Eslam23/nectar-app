import 'package:flutter/material.dart';
import 'package:untitled/features/myclub_card/view/widget/upper_half_container.dart';
import 'package:untitled/utilies/color_data.dart';

import 'down_half_container.dart';
class MyClubCardViewBody extends StatelessWidget {
  const MyClubCardViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height *.02,),
        Center(
          child: Column(
            children: [
              UpperHalfContainer(),
              DownHalfContainer(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.04),
          width: MediaQuery.of(context).size.width *.8,
          height: MediaQuery.of(context).size.height *.07,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsData.basicColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Text('Record paymens',style: TextStyle(color: ColorsData.basicColor,fontWeight: FontWeight.w500,fontSize: 18),),
          ),
        ),
      ],
    );
  }

}
