/*
import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';
class TermConditionViewBody extends StatelessWidget {
  const TermConditionViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height *.1,),
        Row(
          children: [
            Icon(Icons.location_on,size: 15,),
            SizedBox(width: MediaQuery.of(context).size.width *.02,),
            Text('deliverd to: '),
            Text('Dhaka, Banassre'),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *.15,right: MediaQuery.of(context).size.width *.15,),
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.03,bottom:  MediaQuery.of(context).size.height *.03),
          width: double.infinity,
          height: MediaQuery.of(context).size.height *.2,
          color: ColorsData.basicColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Help & Support',style: TextStyle(color: Colors.white,fontSize:24 ,fontWeight:FontWeight.w500 ,),),
              TextField(
                decoration: InputDecoration(
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/
